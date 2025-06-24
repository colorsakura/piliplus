import 'dart:math' as math;
import 'dart:ui';

import 'package:PiliPlus/common/widgets/text_field/editable_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart' hide EditableText, EditableTextState;

abstract class TextSelectionGestureDetectorBuilderDelegate {
  /// [GlobalKey] to the [EditableText] for which the
  /// [TextSelectionGestureDetectorBuilder] will build a [TextSelectionGestureDetector].
  GlobalKey<EditableTextState> get editableTextKey;

  /// Whether the text field should respond to force presses.
  bool get forcePressEnabled;

  /// Whether the user may select text in the text field.
  bool get selectionEnabled;
}

/// Builds a [TextSelectionGestureDetector] to wrap an [EditableText].
///
/// The class implements sensible defaults for many user interactions
/// with an [EditableText] (see the documentation of the various gesture handler
/// methods, e.g. [onTapDown], [onForcePressStart], etc.). Subclasses of
/// [TextSelectionGestureDetectorBuilder] can change the behavior performed in
/// responds to these gesture events by overriding the corresponding handler
/// methods of this class.
///
/// The resulting [TextSelectionGestureDetector] to wrap an [EditableText] is
/// obtained by calling [buildGestureDetector].
///
/// A [TextSelectionGestureDetectorBuilder] must be provided a
/// [TextSelectionGestureDetectorBuilderDelegate], from which information about
/// the [EditableText] may be obtained. Typically, the [State] of the widget
/// that builds the [EditableText] implements this interface, and then passes
/// itself as the [delegate].
///
/// See also:
///
///  * [TextField], which uses a subclass to implement the Material-specific
///    gesture logic of an [EditableText].
///  * [CupertinoTextField], which uses a subclass to implement the
///    Cupertino-specific gesture logic of an [EditableText].
class TextSelectionGestureDetectorBuilder {
  /// Creates a [TextSelectionGestureDetectorBuilder].
  TextSelectionGestureDetectorBuilder({required this.delegate});

  /// The delegate for this [TextSelectionGestureDetectorBuilder].
  ///
  /// The delegate provides the builder with information about what actions can
  /// currently be performed on the text field. Based on this, the builder adds
  /// the correct gesture handlers to the gesture detector.
  ///
  /// Typically implemented by a [State] of a widget that builds an
  /// [EditableText].
  @protected
  final TextSelectionGestureDetectorBuilderDelegate delegate;

  // Shows the magnifier on supported platforms at the given offset, currently
  // only Android and iOS.
  void _showMagnifierIfSupportedByPlatform(Offset positionToShow) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.iOS:
        editableText.showMagnifier(positionToShow);
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
    }
  }

  // Hides the magnifier on supported platforms, currently only Android and iOS.
  void _hideMagnifierIfSupportedByPlatform() {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.iOS:
        editableText.hideMagnifier();
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
    }
  }

  /// Returns true if lastSecondaryTapDownPosition was on selection.
  bool get _lastSecondaryTapWasOnSelection {
    assert(renderEditable.lastSecondaryTapDownPosition != null);
    if (renderEditable.selection == null) {
      return false;
    }

    final TextPosition textPosition = renderEditable.getPositionForPoint(
      renderEditable.lastSecondaryTapDownPosition!,
    );

    return renderEditable.selection!.start <= textPosition.offset &&
        renderEditable.selection!.end >= textPosition.offset;
  }

  bool _positionWasOnSelectionExclusive(TextPosition textPosition) {
    final TextSelection? selection = renderEditable.selection;
    if (selection == null) {
      return false;
    }

    return selection.start < textPosition.offset &&
        selection.end > textPosition.offset;
  }

  bool _positionWasOnSelectionInclusive(TextPosition textPosition) {
    final TextSelection? selection = renderEditable.selection;
    if (selection == null) {
      return false;
    }

    return selection.start <= textPosition.offset &&
        selection.end >= textPosition.offset;
  }

  // Expand the selection to the given global position.
  //
  // Either base or extent will be moved to the last tapped position, whichever
  // is closest. The selection will never shrink or pivot, only grow.
  //
  // If fromSelection is given, will expand from that selection instead of the
  // current selection in renderEditable.
  //
  // See also:
  //
  //   * [_extendSelection], which is similar but pivots the selection around
  //     the base.
  void _expandSelection(
    Offset offset,
    SelectionChangedCause cause, [
    TextSelection? fromSelection,
  ]) {
    assert(renderEditable.selection?.baseOffset != null);

    final TextPosition tappedPosition =
        renderEditable.getPositionForPoint(offset);
    final TextSelection selection = fromSelection ?? renderEditable.selection!;
    final bool baseIsCloser =
        (tappedPosition.offset - selection.baseOffset).abs() <
            (tappedPosition.offset - selection.extentOffset).abs();
    final TextSelection nextSelection = selection.copyWith(
      baseOffset: baseIsCloser ? selection.extentOffset : selection.baseOffset,
      extentOffset: tappedPosition.offset,
    );

    editableText.userUpdateTextEditingValue(
      editableText.textEditingValue.copyWith(selection: nextSelection),
      cause,
    );
  }

  // Extend the selection to the given global position.
  //
  // Holds the base in place and moves the extent.
  //
  // See also:
  //
  //   * [_expandSelection], which is similar but always increases the size of
  //     the selection.
  void _extendSelection(Offset offset, SelectionChangedCause cause) {
    assert(renderEditable.selection?.baseOffset != null);

    final TextPosition tappedPosition =
        renderEditable.getPositionForPoint(offset);
    final TextSelection selection = renderEditable.selection!;
    final TextSelection nextSelection =
        selection.copyWith(extentOffset: tappedPosition.offset);

    editableText.userUpdateTextEditingValue(
      editableText.textEditingValue.copyWith(selection: nextSelection),
      cause,
    );
  }

  /// Whether to show the selection toolbar.
  ///
  /// It is based on the signal source when a [onTapDown] is called. This getter
  /// will return true if current [onTapDown] event is triggered by a touch or
  /// a stylus.
  bool get shouldShowSelectionToolbar => _shouldShowSelectionToolbar;
  bool _shouldShowSelectionToolbar = true;

  /// The [State] of the [EditableText] for which the builder will provide a
  /// [TextSelectionGestureDetector].
  @protected
  EditableTextState get editableText => delegate.editableTextKey.currentState!;

  /// The [RenderObject] of the [EditableText] for which the builder will
  /// provide a [TextSelectionGestureDetector].
  @protected
  RenderEditable get renderEditable => editableText.renderEditable;

  /// Whether the Shift key was pressed when the most recent [PointerDownEvent]
  /// was tracked by the [BaseTapAndDragGestureRecognizer].
  bool _isShiftPressed = false;

  /// The viewport offset pixels of any [Scrollable] containing the
  /// [RenderEditable] at the last drag start.
  double _dragStartScrollOffset = 0.0;

  /// The viewport offset pixels of the [RenderEditable] at the last drag start.
  double _dragStartViewportOffset = 0.0;

  double get _scrollPosition {
    final ScrollableState? scrollableState =
        delegate.editableTextKey.currentContext == null
            ? null
            : Scrollable.maybeOf(delegate.editableTextKey.currentContext!);
    return scrollableState == null ? 0.0 : scrollableState.position.pixels;
  }

  AxisDirection? get _scrollDirection {
    final ScrollableState? scrollableState =
        delegate.editableTextKey.currentContext == null
            ? null
            : Scrollable.maybeOf(delegate.editableTextKey.currentContext!);
    return scrollableState?.axisDirection;
  }

  // For a shift + tap + drag gesture, the TextSelection at the point of the
  // tap. Mac uses this value to reset to the original selection when an
  // inversion of the base and offset happens.
  TextSelection? _dragStartSelection;

  // For iOS long press behavior when the field is not focused. iOS uses this value
  // to determine if a long press began on a field that was not focused.
  //
  // If the field was not focused when the long press began, a long press will select
  // the word and a long press move will select word-by-word. If the field was
  // focused, the cursor moves to the long press position.
  bool _longPressStartedWithoutFocus = false;

  /// Handler for [TextSelectionGestureDetector.onTapTrackStart].
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onTapTrackStart], which triggers this
  ///    callback.
  @protected
  void onTapTrackStart() {
    _isShiftPressed = HardwareKeyboard.instance.logicalKeysPressed
        .intersection(<LogicalKeyboardKey>{
      LogicalKeyboardKey.shiftLeft,
      LogicalKeyboardKey.shiftRight,
    }).isNotEmpty;
  }

  /// Handler for [TextSelectionGestureDetector.onTapTrackReset].
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onTapTrackReset], which triggers this
  ///    callback.
  @protected
  void onTapTrackReset() {
    _isShiftPressed = false;
  }

  /// Handler for [TextSelectionGestureDetector.onTapDown].
  ///
  /// By default, it forwards the tap to [RenderEditable.handleTapDown] and sets
  /// [shouldShowSelectionToolbar] to true if the tap was initiated by a finger or stylus.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onTapDown], which triggers this callback.
  @protected
  void onTapDown(TapDragDownDetails details) {
    if (!delegate.selectionEnabled) {
      return;
    }

    // TODO(Renzo-Olivares): Migrate text selection gestures away from saving state
    // in renderEditable. The gesture callbacks can use the details objects directly
    // in callbacks variants that provide them [TapGestureRecognizer.onSecondaryTap]
    // vs [TapGestureRecognizer.onSecondaryTapUp] instead of having to track state in
    // renderEditable. When this migration is complete we should remove this hack.
    // See https://github.com/flutter/flutter/issues/115130.
    renderEditable
        .handleTapDown(TapDownDetails(globalPosition: details.globalPosition));
    // The selection overlay should only be shown when the user is interacting
    // through a touch screen (via either a finger or a stylus). A mouse shouldn't
    // trigger the selection overlay.
    // For backwards-compatibility, we treat a null kind the same as touch.
    final PointerDeviceKind? kind = details.kind;
    // TODO(justinmc): Should a desktop platform show its selection toolbar when
    // receiving a tap event?  Say a Windows device with a touchscreen.
    // https://github.com/flutter/flutter/issues/106586
    _shouldShowSelectionToolbar = kind == null ||
        kind == PointerDeviceKind.touch ||
        kind == PointerDeviceKind.stylus;

    // It is impossible to extend the selection when the shift key is pressed, if the
    // renderEditable.selection is invalid.
    final bool isShiftPressedValid =
        _isShiftPressed && renderEditable.selection?.baseOffset != null;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        if (editableText.widget.stylusHandwritingEnabled) {
          final bool stylusEnabled = switch (kind) {
            PointerDeviceKind.stylus ||
            PointerDeviceKind.invertedStylus =>
              editableText.widget.stylusHandwritingEnabled,
            _ => false,
          };
          if (stylusEnabled) {
            Scribe.isFeatureAvailable().then((bool isAvailable) {
              if (isAvailable) {
                renderEditable.selectPosition(
                    cause: SelectionChangedCause.stylusHandwriting);
                Scribe.startStylusHandwriting();
              }
            });
          }
        }
      case TargetPlatform.fuchsia:
      case TargetPlatform.iOS:
        // On mobile platforms the selection is set on tap up.
        break;
      case TargetPlatform.macOS:
        editableText.hideToolbar();
        // On macOS, a shift-tapped unfocused field expands from 0, not from the
        // previous selection.
        if (isShiftPressedValid) {
          final TextSelection? fromSelection = renderEditable.hasFocus
              ? null
              : const TextSelection.collapsed(offset: 0);
          _expandSelection(
              details.globalPosition, SelectionChangedCause.tap, fromSelection);
          return;
        }
        // On macOS, a tap/click places the selection in a precise position.
        // This differs from iOS/iPadOS, where if the gesture is done by a touch
        // then the selection moves to the closest word edge, instead of a
        // precise position.
        renderEditable.selectPosition(cause: SelectionChangedCause.tap);
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        editableText.hideToolbar();
        if (isShiftPressedValid) {
          _extendSelection(details.globalPosition, SelectionChangedCause.tap);
          return;
        }
        renderEditable.selectPosition(cause: SelectionChangedCause.tap);
    }
  }

  /// Handler for [TextSelectionGestureDetector.onForcePressStart].
  ///
  /// By default, it selects the word at the position of the force press,
  /// if selection is enabled.
  ///
  /// This callback is only applicable when force press is enabled.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onForcePressStart], which triggers this
  ///    callback.
  @protected
  void onForcePressStart(ForcePressDetails details) {
    assert(delegate.forcePressEnabled);
    _shouldShowSelectionToolbar = true;
    if (!delegate.selectionEnabled) {
      return;
    }
    renderEditable.selectWordsInRange(
      from: details.globalPosition,
      cause: SelectionChangedCause.forcePress,
    );
    editableText.showToolbar();
  }

  /// Handler for [TextSelectionGestureDetector.onForcePressEnd].
  ///
  /// By default, it selects words in the range specified in [details] and shows
  /// toolbar if it is necessary.
  ///
  /// This callback is only applicable when force press is enabled.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onForcePressEnd], which triggers this
  ///    callback.
  @protected
  void onForcePressEnd(ForcePressDetails details) {
    assert(delegate.forcePressEnabled);
    renderEditable.selectWordsInRange(
      from: details.globalPosition,
      cause: SelectionChangedCause.forcePress,
    );
    if (shouldShowSelectionToolbar) {
      editableText.showToolbar();
    }
  }

  /// Whether the provided [onUserTap] callback should be dispatched on every
  /// tap or only non-consecutive taps.
  ///
  /// Defaults to false.
  @protected
  bool get onUserTapAlwaysCalled => false;

  /// Handler for [TextSelectionGestureDetector.onUserTap].
  ///
  /// By default, it serves as placeholder to enable subclass override.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onUserTap], which triggers this
  ///    callback.
  ///  * [TextSelectionGestureDetector.onUserTapAlwaysCalled], which controls
  ///     whether this callback is called only on the first tap in a series
  ///     of taps.
  @protected
  void onUserTap() {
    /* Subclass should override this method if needed. */
  }

  /// Handler for [TextSelectionGestureDetector.onSingleTapUp].
  ///
  /// By default, it selects word edge if selection is enabled.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onSingleTapUp], which triggers
  ///    this callback.
  @protected
  void onSingleTapUp(TapDragUpDetails details) {
    if (!delegate.selectionEnabled) {
      editableText.requestKeyboard();
      return;
    }
    // It is impossible to extend the selection when the shift key is pressed, if the
    // renderEditable.selection is invalid.
    final bool isShiftPressedValid =
        _isShiftPressed && renderEditable.selection?.baseOffset != null;
    switch (defaultTargetPlatform) {
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        break;
      // On desktop platforms the selection is set on tap down.
      case TargetPlatform.android:
        editableText.hideToolbar(false);
        if (isShiftPressedValid) {
          _extendSelection(details.globalPosition, SelectionChangedCause.tap);
          return;
        }
        renderEditable.selectPosition(cause: SelectionChangedCause.tap);
        editableText.showSpellCheckSuggestionsToolbar();
      case TargetPlatform.fuchsia:
        editableText.hideToolbar(false);
        if (isShiftPressedValid) {
          _extendSelection(details.globalPosition, SelectionChangedCause.tap);
          return;
        }
        renderEditable.selectPosition(cause: SelectionChangedCause.tap);
      case TargetPlatform.iOS:
        if (isShiftPressedValid) {
          // On iOS, a shift-tapped unfocused field expands from 0, not from
          // the previous selection.
          final TextSelection? fromSelection = renderEditable.hasFocus
              ? null
              : const TextSelection.collapsed(offset: 0);
          _expandSelection(
              details.globalPosition, SelectionChangedCause.tap, fromSelection);
          return;
        }
        switch (details.kind) {
          case PointerDeviceKind.mouse:
          case PointerDeviceKind.trackpad:
          case PointerDeviceKind.stylus:
          case PointerDeviceKind.invertedStylus:
            // TODO(camsim99): Determine spell check toolbar behavior in these cases:
            // https://github.com/flutter/flutter/issues/119573.
            // Precise devices should place the cursor at a precise position if the
            // word at the text position is not misspelled.
            renderEditable.selectPosition(cause: SelectionChangedCause.tap);
          case PointerDeviceKind.touch:
          case PointerDeviceKind.unknown:
            // If the word that was tapped is misspelled, select the word and show the spell check suggestions
            // toolbar once. If additional taps are made on a misspelled word, toggle the toolbar. If the word
            // is not misspelled, default to the following behavior:
            //
            // Toggle the toolbar when the tap is exclusively within the bounds of a non-collapsed `previousSelection`,
            // and the editable is focused.
            //
            // Toggle the toolbar if the `previousSelection` is collapsed, the tap is on the selection, the
            // TextAffinity remains the same, the editable field is not read only, and the editable is focused.
            // The TextAffinity is important when the cursor is on the boundary of a line wrap, if the affinity
            // is different (i.e. it is downstream), the selection should move to the following line and not toggle
            // the toolbar.
            //
            // Selects the word edge closest to the tap when the editable is not focused, or if the tap was neither exclusively
            // or inclusively on `previousSelection`. If the selection remains the same after selecting the word edge, then we
            // toggle the toolbar, if the editable field is not read only. If the selection changes then we hide the toolbar.
            final TextSelection previousSelection = renderEditable.selection ??
                editableText.textEditingValue.selection;
            final TextPosition textPosition =
                renderEditable.getPositionForPoint(
              details.globalPosition,
            );
            final bool isAffinityTheSame =
                textPosition.affinity == previousSelection.affinity;
            final bool wordAtCursorIndexIsMisspelled = editableText
                    .findSuggestionSpanAtCursorIndex(textPosition.offset) !=
                null;

            if (wordAtCursorIndexIsMisspelled) {
              renderEditable.selectWord(cause: SelectionChangedCause.tap);
              if (previousSelection !=
                  editableText.textEditingValue.selection) {
                editableText.showSpellCheckSuggestionsToolbar();
              } else {
                editableText.toggleToolbar(false);
              }
            } else if (((_positionWasOnSelectionExclusive(textPosition) &&
                        !previousSelection.isCollapsed) ||
                    (_positionWasOnSelectionInclusive(textPosition) &&
                        previousSelection.isCollapsed &&
                        isAffinityTheSame &&
                        !renderEditable.readOnly)) &&
                renderEditable.hasFocus) {
              editableText.toggleToolbar(false);
            } else {
              renderEditable.selectWordEdge(cause: SelectionChangedCause.tap);
              if (previousSelection ==
                      editableText.textEditingValue.selection &&
                  renderEditable.hasFocus &&
                  !renderEditable.readOnly) {
                editableText.toggleToolbar(false);
              } else {
                editableText.hideToolbar(false);
              }
            }
        }
    }
    editableText.requestKeyboard();
  }

  /// Handler for [TextSelectionGestureDetector.onSingleTapCancel].
  ///
  /// By default, it serves as placeholder to enable subclass override.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onSingleTapCancel], which triggers
  ///    this callback.
  @protected
  void onSingleTapCancel() {
    /* Subclass should override this method if needed. */
  }

  /// Handler for [TextSelectionGestureDetector.onSingleLongTapStart].
  ///
  /// By default, it selects text position specified in [details] if selection
  /// is enabled.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onSingleLongTapStart], which triggers
  ///    this callback.
  @protected
  void onSingleLongTapStart(LongPressStartDetails details) {
    if (!delegate.selectionEnabled) {
      return;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        if (!renderEditable.hasFocus) {
          _longPressStartedWithoutFocus = true;
          renderEditable.selectWord(cause: SelectionChangedCause.longPress);
        } else if (renderEditable.readOnly) {
          renderEditable.selectWord(cause: SelectionChangedCause.longPress);
          if (editableText.context.mounted) {
            Feedback.forLongPress(editableText.context);
          }
        } else {
          renderEditable.selectPositionAt(
            from: details.globalPosition,
            cause: SelectionChangedCause.longPress,
          );
          // Show the floating cursor.
          final RawFloatingCursorPoint cursorPoint = RawFloatingCursorPoint(
            state: FloatingCursorDragState.Start,
            startLocation: (
              renderEditable.globalToLocal(details.globalPosition),
              TextPosition(
                offset: editableText.textEditingValue.selection.baseOffset,
                affinity: editableText.textEditingValue.selection.affinity,
              ),
            ),
            offset: Offset.zero,
          );
          editableText.updateFloatingCursor(cursorPoint);
        }
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        renderEditable.selectWord(cause: SelectionChangedCause.longPress);
        if (editableText.context.mounted) {
          Feedback.forLongPress(editableText.context);
        }
    }

    _showMagnifierIfSupportedByPlatform(details.globalPosition);

    _dragStartViewportOffset = renderEditable.offset.pixels;
    _dragStartScrollOffset = _scrollPosition;
  }

  /// Handler for [TextSelectionGestureDetector.onSingleLongTapMoveUpdate].
  ///
  /// By default, it updates the selection location specified in [details] if
  /// selection is enabled.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onSingleLongTapMoveUpdate], which
  ///    triggers this callback.
  @protected
  void onSingleLongTapMoveUpdate(LongPressMoveUpdateDetails details) {
    if (!delegate.selectionEnabled) {
      return;
    }
    // Adjust the drag start offset for possible viewport offset changes.
    final Offset editableOffset = renderEditable.maxLines == 1
        ? Offset(renderEditable.offset.pixels - _dragStartViewportOffset, 0.0)
        : Offset(0.0, renderEditable.offset.pixels - _dragStartViewportOffset);
    final Offset scrollableOffset = switch (axisDirectionToAxis(
      _scrollDirection ?? AxisDirection.left,
    )) {
      Axis.horizontal => Offset(_scrollPosition - _dragStartScrollOffset, 0.0),
      Axis.vertical => Offset(0.0, _scrollPosition - _dragStartScrollOffset),
    };
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        if (_longPressStartedWithoutFocus || renderEditable.readOnly) {
          renderEditable.selectWordsInRange(
            from: details.globalPosition -
                details.offsetFromOrigin -
                editableOffset -
                scrollableOffset,
            to: details.globalPosition,
            cause: SelectionChangedCause.longPress,
          );
        } else {
          renderEditable.selectPositionAt(
            from: details.globalPosition,
            cause: SelectionChangedCause.longPress,
          );
          // Update the floating cursor.
          final RawFloatingCursorPoint cursorPoint = RawFloatingCursorPoint(
            state: FloatingCursorDragState.Update,
            offset: details.offsetFromOrigin,
          );
          editableText.updateFloatingCursor(cursorPoint);
        }
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        renderEditable.selectWordsInRange(
          from: details.globalPosition -
              details.offsetFromOrigin -
              editableOffset -
              scrollableOffset,
          to: details.globalPosition,
          cause: SelectionChangedCause.longPress,
        );
    }

    _showMagnifierIfSupportedByPlatform(details.globalPosition);
  }

  /// Handler for [TextSelectionGestureDetector.onSingleLongTapEnd].
  ///
  /// By default, it shows toolbar if necessary.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onSingleLongTapEnd], which triggers this
  ///    callback.
  @protected
  void onSingleLongTapEnd(LongPressEndDetails details) {
    _hideMagnifierIfSupportedByPlatform();
    if (shouldShowSelectionToolbar) {
      editableText.showToolbar();
    }
    _longPressStartedWithoutFocus = false;
    _dragStartViewportOffset = 0.0;
    _dragStartScrollOffset = 0.0;
    if (defaultTargetPlatform == TargetPlatform.iOS &&
        delegate.selectionEnabled &&
        editableText.textEditingValue.selection.isCollapsed) {
      // Update the floating cursor.
      final RawFloatingCursorPoint cursorPoint = RawFloatingCursorPoint(
        state: FloatingCursorDragState.End,
      );
      editableText.updateFloatingCursor(cursorPoint);
    }
  }

  /// Handler for [TextSelectionGestureDetector.onSecondaryTap].
  ///
  /// By default, selects the word if possible and shows the toolbar.
  @protected
  void onSecondaryTap() {
    if (!delegate.selectionEnabled) {
      return;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        if (!_lastSecondaryTapWasOnSelection || !renderEditable.hasFocus) {
          renderEditable.selectWord(cause: SelectionChangedCause.tap);
        }
        if (shouldShowSelectionToolbar) {
          editableText.hideToolbar();
          editableText.showToolbar();
        }
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        if (!renderEditable.hasFocus) {
          renderEditable.selectPosition(cause: SelectionChangedCause.tap);
        }
        editableText.toggleToolbar();
    }
  }

  /// Handler for [TextSelectionGestureDetector.onSecondaryTapDown].
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onSecondaryTapDown], which triggers this
  ///    callback.
  ///  * [onSecondaryTap], which is typically called after this.
  @protected
  void onSecondaryTapDown(TapDownDetails details) {
    // TODO(Renzo-Olivares): Migrate text selection gestures away from saving state
    // in renderEditable. The gesture callbacks can use the details objects directly
    // in callbacks variants that provide them [TapGestureRecognizer.onSecondaryTap]
    // vs [TapGestureRecognizer.onSecondaryTapUp] instead of having to track state in
    // renderEditable. When this migration is complete we should remove this hack.
    // See https://github.com/flutter/flutter/issues/115130.
    renderEditable.handleSecondaryTapDown(
        TapDownDetails(globalPosition: details.globalPosition));
    _shouldShowSelectionToolbar = true;
  }

  /// Handler for [TextSelectionGestureDetector.onDoubleTapDown].
  ///
  /// By default, it selects a word through [RenderEditable.selectWord] if
  /// selectionEnabled and shows toolbar if necessary.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onDoubleTapDown], which triggers this
  ///    callback.
  @protected
  void onDoubleTapDown(TapDragDownDetails details) {
    if (delegate.selectionEnabled) {
      renderEditable.selectWord(cause: SelectionChangedCause.doubleTap);
      if (shouldShowSelectionToolbar) {
        editableText.showToolbar();
      }
    }
  }

  // Selects the set of paragraphs in a document that intersect a given range of
  // global positions.
  void _selectParagraphsInRange(
      {required Offset from, Offset? to, SelectionChangedCause? cause}) {
    final TextBoundary paragraphBoundary =
        ParagraphBoundary(editableText.textEditingValue.text);
    _selectTextBoundariesInRange(
        boundary: paragraphBoundary, from: from, to: to, cause: cause);
  }

  // Selects the set of lines in a document that intersect a given range of
  // global positions.
  void _selectLinesInRange(
      {required Offset from, Offset? to, SelectionChangedCause? cause}) {
    final TextBoundary lineBoundary = LineBoundary(renderEditable);
    _selectTextBoundariesInRange(
        boundary: lineBoundary, from: from, to: to, cause: cause);
  }

  // Returns the location of a text boundary at `extent`. When `extent` is at
  // the end of the text, returns the previous text boundary's location.
  TextRange _moveToTextBoundary(
      TextPosition extent, TextBoundary textBoundary) {
    assert(extent.offset >= 0);
    // Use extent.offset - 1 when `extent` is at the end of the text to retrieve
    // the previous text boundary's location.
    final int start = textBoundary.getLeadingTextBoundaryAt(
          extent.offset == editableText.textEditingValue.text.length
              ? extent.offset - 1
              : extent.offset,
        ) ??
        0;
    final int end = textBoundary.getTrailingTextBoundaryAt(extent.offset) ??
        editableText.textEditingValue.text.length;
    return TextRange(start: start, end: end);
  }

  // Selects the set of text boundaries in a document that intersect a given
  // range of global positions.
  //
  // The set of text boundaries selected are not strictly bounded by the range
  // of global positions.
  //
  // The first and last endpoints of the selection will always be at the
  // beginning and end of a text boundary respectively.
  void _selectTextBoundariesInRange({
    required TextBoundary boundary,
    required Offset from,
    Offset? to,
    SelectionChangedCause? cause,
  }) {
    final TextPosition fromPosition = renderEditable.getPositionForPoint(from);
    final TextRange fromRange = _moveToTextBoundary(fromPosition, boundary);
    final TextPosition toPosition =
        to == null ? fromPosition : renderEditable.getPositionForPoint(to);
    final TextRange toRange = toPosition == fromPosition
        ? fromRange
        : _moveToTextBoundary(toPosition, boundary);
    final bool isFromBoundaryBeforeToBoundary = fromRange.start < toRange.end;

    final TextSelection newSelection = isFromBoundaryBeforeToBoundary
        ? TextSelection(baseOffset: fromRange.start, extentOffset: toRange.end)
        : TextSelection(baseOffset: fromRange.end, extentOffset: toRange.start);

    editableText.userUpdateTextEditingValue(
      editableText.textEditingValue.copyWith(selection: newSelection),
      cause,
    );
  }

  /// Handler for [TextSelectionGestureDetector.onTripleTapDown].
  ///
  /// By default, it selects a paragraph if
  /// [TextSelectionGestureDetectorBuilderDelegate.selectionEnabled] is true
  /// and shows the toolbar if necessary.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onTripleTapDown], which triggers this
  ///    callback.
  @protected
  void onTripleTapDown(TapDragDownDetails details) {
    if (!delegate.selectionEnabled) {
      return;
    }
    if (renderEditable.maxLines == 1) {
      editableText.selectAll(SelectionChangedCause.tap);
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
        case TargetPlatform.iOS:
        case TargetPlatform.macOS:
        case TargetPlatform.windows:
          _selectParagraphsInRange(
              from: details.globalPosition, cause: SelectionChangedCause.tap);
        case TargetPlatform.linux:
          _selectLinesInRange(
              from: details.globalPosition, cause: SelectionChangedCause.tap);
      }
    }
    if (shouldShowSelectionToolbar) {
      editableText.showToolbar();
    }
  }

  /// Handler for [TextSelectionGestureDetector.onDragSelectionStart].
  ///
  /// By default, it selects a text position specified in [details].
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onDragSelectionStart], which triggers
  ///    this callback.
  @protected
  void onDragSelectionStart(TapDragStartDetails details) {
    if (!delegate.selectionEnabled) {
      return;
    }
    final PointerDeviceKind? kind = details.kind;
    _shouldShowSelectionToolbar = kind == null ||
        kind == PointerDeviceKind.touch ||
        kind == PointerDeviceKind.stylus;

    _dragStartSelection = renderEditable.selection;
    _dragStartScrollOffset = _scrollPosition;
    _dragStartViewportOffset = renderEditable.offset.pixels;

    if (_TextSelectionGestureDetectorState._getEffectiveConsecutiveTapCount(
          details.consecutiveTapCount,
        ) >
        1) {
      // Do not set the selection on a consecutive tap and drag.
      return;
    }

    if (_isShiftPressed &&
        renderEditable.selection != null &&
        renderEditable.selection!.isValid) {
      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
        case TargetPlatform.macOS:
          _expandSelection(details.globalPosition, SelectionChangedCause.drag);
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          _extendSelection(details.globalPosition, SelectionChangedCause.drag);
      }
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
          switch (details.kind) {
            case PointerDeviceKind.mouse:
            case PointerDeviceKind.trackpad:
              renderEditable.selectPositionAt(
                from: details.globalPosition,
                cause: SelectionChangedCause.drag,
              );
            case PointerDeviceKind.stylus:
            case PointerDeviceKind.invertedStylus:
            case PointerDeviceKind.touch:
            case PointerDeviceKind.unknown:
            case null:
          }
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          switch (details.kind) {
            case PointerDeviceKind.mouse:
            case PointerDeviceKind.trackpad:
              renderEditable.selectPositionAt(
                from: details.globalPosition,
                cause: SelectionChangedCause.drag,
              );
            case PointerDeviceKind.stylus:
            case PointerDeviceKind.invertedStylus:
            case PointerDeviceKind.touch:
            case PointerDeviceKind.unknown:
              // For Android, Fuchsia, and iOS platforms, a touch drag
              // does not initiate unless the editable has focus.
              if (renderEditable.hasFocus) {
                renderEditable.selectPositionAt(
                  from: details.globalPosition,
                  cause: SelectionChangedCause.drag,
                );
                _showMagnifierIfSupportedByPlatform(details.globalPosition);
              }
            case null:
          }
        case TargetPlatform.linux:
        case TargetPlatform.macOS:
        case TargetPlatform.windows:
          renderEditable.selectPositionAt(
            from: details.globalPosition,
            cause: SelectionChangedCause.drag,
          );
      }
    }
  }

  /// Handler for [TextSelectionGestureDetector.onDragSelectionUpdate].
  ///
  /// By default, it updates the selection location specified in the provided
  /// details objects.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onDragSelectionUpdate], which triggers
  ///    this callback./lib/src/material/text_field.dart
  @protected
  void onDragSelectionUpdate(TapDragUpdateDetails details) {
    if (!delegate.selectionEnabled) {
      return;
    }

    if (!_isShiftPressed) {
      // Adjust the drag start offset for possible viewport offset changes.
      final Offset editableOffset = renderEditable.maxLines == 1
          ? Offset(renderEditable.offset.pixels - _dragStartViewportOffset, 0.0)
          : Offset(
              0.0, renderEditable.offset.pixels - _dragStartViewportOffset);
      final Offset scrollableOffset = switch (axisDirectionToAxis(
        _scrollDirection ?? AxisDirection.left,
      )) {
        Axis.horizontal =>
          Offset(_scrollPosition - _dragStartScrollOffset, 0.0),
        Axis.vertical => Offset(0.0, _scrollPosition - _dragStartScrollOffset),
      };
      final Offset dragStartGlobalPosition =
          details.globalPosition - details.offsetFromOrigin;

      // Select word by word.
      if (_TextSelectionGestureDetectorState._getEffectiveConsecutiveTapCount(
            details.consecutiveTapCount,
          ) ==
          2) {
        renderEditable.selectWordsInRange(
          from: dragStartGlobalPosition - editableOffset - scrollableOffset,
          to: details.globalPosition,
          cause: SelectionChangedCause.drag,
        );

        switch (details.kind) {
          case PointerDeviceKind.stylus:
          case PointerDeviceKind.invertedStylus:
          case PointerDeviceKind.touch:
          case PointerDeviceKind.unknown:
            return _showMagnifierIfSupportedByPlatform(details.globalPosition);
          case PointerDeviceKind.mouse:
          case PointerDeviceKind.trackpad:
          case null:
            return;
        }
      }

      // Select paragraph-by-paragraph.
      if (_TextSelectionGestureDetectorState._getEffectiveConsecutiveTapCount(
            details.consecutiveTapCount,
          ) ==
          3) {
        switch (defaultTargetPlatform) {
          case TargetPlatform.android:
          case TargetPlatform.fuchsia:
          case TargetPlatform.iOS:
            switch (details.kind) {
              case PointerDeviceKind.mouse:
              case PointerDeviceKind.trackpad:
                return _selectParagraphsInRange(
                  from: dragStartGlobalPosition -
                      editableOffset -
                      scrollableOffset,
                  to: details.globalPosition,
                  cause: SelectionChangedCause.drag,
                );
              case PointerDeviceKind.stylus:
              case PointerDeviceKind.invertedStylus:
              case PointerDeviceKind.touch:
              case PointerDeviceKind.unknown:
              case null:
                // Triple tap to drag is not present on these platforms when using
                // non-precise pointer devices at the moment.
                break;
            }
            return;
          case TargetPlatform.linux:
            return _selectLinesInRange(
              from: dragStartGlobalPosition - editableOffset - scrollableOffset,
              to: details.globalPosition,
              cause: SelectionChangedCause.drag,
            );
          case TargetPlatform.windows:
          case TargetPlatform.macOS:
            return _selectParagraphsInRange(
              from: dragStartGlobalPosition - editableOffset - scrollableOffset,
              to: details.globalPosition,
              cause: SelectionChangedCause.drag,
            );
        }
      }

      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
          // With a mouse device, a drag should select the range from the origin of the drag
          // to the current position of the drag.
          //
          // With a touch device, nothing should happen.
          switch (details.kind) {
            case PointerDeviceKind.mouse:
            case PointerDeviceKind.trackpad:
              return renderEditable.selectPositionAt(
                from:
                    dragStartGlobalPosition - editableOffset - scrollableOffset,
                to: details.globalPosition,
                cause: SelectionChangedCause.drag,
              );
            case PointerDeviceKind.stylus:
            case PointerDeviceKind.invertedStylus:
            case PointerDeviceKind.touch:
            case PointerDeviceKind.unknown:
            case null:
              break;
          }
          return;
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          // With a precise pointer device, such as a mouse, trackpad, or stylus,
          // the drag will select the text spanning the origin of the drag to the end of the drag.
          // With a touch device, the cursor should move with the drag.
          switch (details.kind) {
            case PointerDeviceKind.mouse:
            case PointerDeviceKind.trackpad:
            case PointerDeviceKind.stylus:
            case PointerDeviceKind.invertedStylus:
              return renderEditable.selectPositionAt(
                from:
                    dragStartGlobalPosition - editableOffset - scrollableOffset,
                to: details.globalPosition,
                cause: SelectionChangedCause.drag,
              );
            case PointerDeviceKind.touch:
            case PointerDeviceKind.unknown:
              if (renderEditable.hasFocus) {
                renderEditable.selectPositionAt(
                  from: details.globalPosition,
                  cause: SelectionChangedCause.drag,
                );
                return _showMagnifierIfSupportedByPlatform(
                    details.globalPosition);
              }
            case null:
              break;
          }
          return;
        case TargetPlatform.macOS:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          return renderEditable.selectPositionAt(
            from: dragStartGlobalPosition - editableOffset - scrollableOffset,
            to: details.globalPosition,
            cause: SelectionChangedCause.drag,
          );
      }
    }

    if (_dragStartSelection!.isCollapsed ||
        (defaultTargetPlatform != TargetPlatform.iOS &&
            defaultTargetPlatform != TargetPlatform.macOS)) {
      return _extendSelection(
          details.globalPosition, SelectionChangedCause.drag);
    }

    // If the drag inverts the selection, Mac and iOS revert to the initial
    // selection.
    final TextSelection selection = editableText.textEditingValue.selection;
    final TextPosition nextExtent =
        renderEditable.getPositionForPoint(details.globalPosition);
    final bool isShiftTapDragSelectionForward =
        _dragStartSelection!.baseOffset < _dragStartSelection!.extentOffset;
    final bool isInverted = isShiftTapDragSelectionForward
        ? nextExtent.offset < _dragStartSelection!.baseOffset
        : nextExtent.offset > _dragStartSelection!.baseOffset;
    if (isInverted && selection.baseOffset == _dragStartSelection!.baseOffset) {
      editableText.userUpdateTextEditingValue(
        editableText.textEditingValue.copyWith(
          selection: TextSelection(
            baseOffset: _dragStartSelection!.extentOffset,
            extentOffset: nextExtent.offset,
          ),
        ),
        SelectionChangedCause.drag,
      );
    } else if (!isInverted &&
        nextExtent.offset != _dragStartSelection!.baseOffset &&
        selection.baseOffset != _dragStartSelection!.baseOffset) {
      editableText.userUpdateTextEditingValue(
        editableText.textEditingValue.copyWith(
          selection: TextSelection(
            baseOffset: _dragStartSelection!.baseOffset,
            extentOffset: nextExtent.offset,
          ),
        ),
        SelectionChangedCause.drag,
      );
    } else {
      _extendSelection(details.globalPosition, SelectionChangedCause.drag);
    }
  }

  /// Handler for [TextSelectionGestureDetector.onDragSelectionEnd].
  ///
  /// By default, it cleans up the state used for handling certain
  /// built-in behaviors.
  ///
  /// See also:
  ///
  ///  * [TextSelectionGestureDetector.onDragSelectionEnd], which triggers this
  ///    callback.
  @protected
  void onDragSelectionEnd(TapDragEndDetails details) {
    if (_shouldShowSelectionToolbar &&
        _TextSelectionGestureDetectorState._getEffectiveConsecutiveTapCount(
              details.consecutiveTapCount,
            ) ==
            2) {
      editableText.showToolbar();
    }

    if (_isShiftPressed) {
      _dragStartSelection = null;
    }

    _hideMagnifierIfSupportedByPlatform();
  }

  /// Returns a [TextSelectionGestureDetector] configured with the handlers
  /// provided by this builder.
  ///
  /// The [child] or its subtree should contain an [EditableText] whose key is
  /// the [GlobalKey] provided by the [delegate]'s
  /// [TextSelectionGestureDetectorBuilderDelegate.editableTextKey].
  Widget buildGestureDetector(
      {Key? key, HitTestBehavior? behavior, required Widget child}) {
    return TextSelectionGestureDetector(
      key: key,
      onTapTrackStart: onTapTrackStart,
      onTapTrackReset: onTapTrackReset,
      onTapDown: onTapDown,
      onForcePressStart: delegate.forcePressEnabled ? onForcePressStart : null,
      onForcePressEnd: delegate.forcePressEnabled ? onForcePressEnd : null,
      onSecondaryTap: onSecondaryTap,
      onSecondaryTapDown: onSecondaryTapDown,
      onSingleTapUp: onSingleTapUp,
      onSingleTapCancel: onSingleTapCancel,
      onUserTap: onUserTap,
      onSingleLongTapStart: onSingleLongTapStart,
      onSingleLongTapMoveUpdate: onSingleLongTapMoveUpdate,
      onSingleLongTapEnd: onSingleLongTapEnd,
      onDoubleTapDown: onDoubleTapDown,
      onTripleTapDown: onTripleTapDown,
      onDragSelectionStart: onDragSelectionStart,
      onDragSelectionUpdate: onDragSelectionUpdate,
      onDragSelectionEnd: onDragSelectionEnd,
      onUserTapAlwaysCalled: onUserTapAlwaysCalled,
      behavior: behavior,
      child: child,
    );
  }
}

class _TextSelectionGestureDetectorState
    extends State<TextSelectionGestureDetector> {
  // Converts the details.consecutiveTapCount from a TapAndDrag*Details object,
  // which can grow to be infinitely large, to a value between 1 and 3. The value
  // that the raw count is converted to is based on the default observed behavior
  // on the native platforms.
  //
  // This method should be used in all instances when details.consecutiveTapCount
  // would be used.
  static int _getEffectiveConsecutiveTapCount(int rawCount) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
        // From observation, these platform's reset their tap count to 0 when
        // the number of consecutive taps exceeds 3. For example on Debian Linux
        // with GTK, when going past a triple click, on the fourth click the
        // selection is moved to the precise click position, on the fifth click
        // the word at the position is selected, and on the sixth click the
        // paragraph at the position is selected.
        return rawCount <= 3
            ? rawCount
            : (rawCount % 3 == 0 ? 3 : rawCount % 3);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        // From observation, these platform's either hold their tap count at 3.
        // For example on macOS, when going past a triple click, the selection
        // should be retained at the paragraph that was first selected on triple
        // click.
        return math.min(rawCount, 3);
      case TargetPlatform.windows:
        // From observation, this platform's consecutive tap actions alternate
        // between double click and triple click actions. For example, after a
        // triple click has selected a paragraph, on the next click the word at
        // the clicked position will be selected, and on the next click the
        // paragraph at the position is selected.
        return rawCount < 2 ? rawCount : 2 + rawCount % 2;
    }
  }

  void _handleTapTrackStart() {
    widget.onTapTrackStart?.call();
  }

  void _handleTapTrackReset() {
    widget.onTapTrackReset?.call();
  }

  // The down handler is force-run on success of a single tap and optimistically
  // run before a long press success.
  void _handleTapDown(TapDragDownDetails details) {
    widget.onTapDown?.call(details);
    // This isn't detected as a double tap gesture in the gesture recognizer
    // because it's 2 single taps, each of which may do different things depending
    // on whether it's a single tap, the first tap of a double tap, the second
    // tap held down, a clean double tap etc.
    if (_getEffectiveConsecutiveTapCount(details.consecutiveTapCount) == 2) {
      return widget.onDoubleTapDown?.call(details);
    }

    if (_getEffectiveConsecutiveTapCount(details.consecutiveTapCount) == 3) {
      return widget.onTripleTapDown?.call(details);
    }
  }

  void _handleTapUp(TapDragUpDetails details) {
    if (_getEffectiveConsecutiveTapCount(details.consecutiveTapCount) == 1) {
      widget.onSingleTapUp?.call(details);
      widget.onUserTap?.call();
    } else if (widget.onUserTapAlwaysCalled) {
      widget.onUserTap?.call();
    }
  }

  void _handleTapCancel() {
    widget.onSingleTapCancel?.call();
  }

  void _handleDragStart(TapDragStartDetails details) {
    widget.onDragSelectionStart?.call(details);
  }

  void _handleDragUpdate(TapDragUpdateDetails details) {
    widget.onDragSelectionUpdate?.call(details);
  }

  void _handleDragEnd(TapDragEndDetails details) {
    widget.onDragSelectionEnd?.call(details);
  }

  void _forcePressStarted(ForcePressDetails details) {
    widget.onForcePressStart?.call(details);
  }

  void _forcePressEnded(ForcePressDetails details) {
    widget.onForcePressEnd?.call(details);
  }

  void _handleLongPressStart(LongPressStartDetails details) {
    if (widget.onSingleLongTapStart != null) {
      widget.onSingleLongTapStart!(details);
    }
  }

  void _handleLongPressMoveUpdate(LongPressMoveUpdateDetails details) {
    if (widget.onSingleLongTapMoveUpdate != null) {
      widget.onSingleLongTapMoveUpdate!(details);
    }
  }

  void _handleLongPressEnd(LongPressEndDetails details) {
    if (widget.onSingleLongTapEnd != null) {
      widget.onSingleLongTapEnd!(details);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<Type, GestureRecognizerFactory> gestures =
        <Type, GestureRecognizerFactory>{};

    gestures[TapGestureRecognizer] =
        GestureRecognizerFactoryWithHandlers<TapGestureRecognizer>(
      () => TapGestureRecognizer(debugOwner: this),
      (TapGestureRecognizer instance) {
        instance
          ..onSecondaryTap = widget.onSecondaryTap
          ..onSecondaryTapDown = widget.onSecondaryTapDown;
      },
    );

    if (widget.onSingleLongTapStart != null ||
        widget.onSingleLongTapMoveUpdate != null ||
        widget.onSingleLongTapEnd != null) {
      gestures[LongPressGestureRecognizer] =
          GestureRecognizerFactoryWithHandlers<LongPressGestureRecognizer>(
        () => LongPressGestureRecognizer(
          debugOwner: this,
          supportedDevices: <PointerDeviceKind>{PointerDeviceKind.touch},
        ),
        (LongPressGestureRecognizer instance) {
          instance
            ..onLongPressStart = _handleLongPressStart
            ..onLongPressMoveUpdate = _handleLongPressMoveUpdate
            ..onLongPressEnd = _handleLongPressEnd;
        },
      );
    }

    if (widget.onDragSelectionStart != null ||
        widget.onDragSelectionUpdate != null ||
        widget.onDragSelectionEnd != null) {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
        case TargetPlatform.iOS:
          gestures[TapAndHorizontalDragGestureRecognizer] =
              GestureRecognizerFactoryWithHandlers<
                  TapAndHorizontalDragGestureRecognizer>(
            () => TapAndHorizontalDragGestureRecognizer(debugOwner: this),
            (TapAndHorizontalDragGestureRecognizer instance) {
              instance
                // Text selection should start from the position of the first pointer
                // down event.
                ..dragStartBehavior = DragStartBehavior.down
                ..eagerVictoryOnDrag =
                    defaultTargetPlatform != TargetPlatform.iOS
                ..onTapTrackStart = _handleTapTrackStart
                ..onTapTrackReset = _handleTapTrackReset
                ..onTapDown = _handleTapDown
                ..onDragStart = _handleDragStart
                ..onDragUpdate = _handleDragUpdate
                ..onDragEnd = _handleDragEnd
                ..onTapUp = _handleTapUp
                ..onCancel = _handleTapCancel;
            },
          );
        case TargetPlatform.linux:
        case TargetPlatform.macOS:
        case TargetPlatform.windows:
          gestures[TapAndPanGestureRecognizer] =
              GestureRecognizerFactoryWithHandlers<TapAndPanGestureRecognizer>(
            () => TapAndPanGestureRecognizer(debugOwner: this),
            (TapAndPanGestureRecognizer instance) {
              instance
                // Text selection should start from the position of the first pointer
                // down event.
                ..dragStartBehavior = DragStartBehavior.down
                ..onTapTrackStart = _handleTapTrackStart
                ..onTapTrackReset = _handleTapTrackReset
                ..onTapDown = _handleTapDown
                ..onDragStart = _handleDragStart
                ..onDragUpdate = _handleDragUpdate
                ..onDragEnd = _handleDragEnd
                ..onTapUp = _handleTapUp
                ..onCancel = _handleTapCancel;
            },
          );
      }
    }

    if (widget.onForcePressStart != null || widget.onForcePressEnd != null) {
      gestures[ForcePressGestureRecognizer] =
          GestureRecognizerFactoryWithHandlers<ForcePressGestureRecognizer>(
        () => ForcePressGestureRecognizer(debugOwner: this),
        (ForcePressGestureRecognizer instance) {
          instance
            ..onStart =
                widget.onForcePressStart != null ? _forcePressStarted : null
            ..onEnd = widget.onForcePressEnd != null ? _forcePressEnded : null;
        },
      );
    }

    return RawGestureDetector(
      gestures: gestures,
      excludeFromSemantics: true,
      behavior: widget.behavior,
      child: widget.child,
    );
  }
}
