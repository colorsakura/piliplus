import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_svg/flutter_svg.dart';

/// https://github.com/yang-f/flutter_svg_provider

/// Rasterizes given svg picture for displaying in [Image] widget:
///
/// ```dart
/// Image(
///   width: 32,
///   height: 32,
///   image: Svg('assets/my_icon.svg'),
/// )
/// ```
class SvgImageProvider extends ImageProvider<SvgImageKey> {
  /// Path to svg file or asset
  final String path;

  /// Size in logical pixels to render.
  /// Useful for [DecorationImage].
  /// If not specified, will use size from [Image].
  /// If [Image] not specifies size too, will use default size 100x100.
  final Size? size;

  /// Color to tint the SVG
  final Color? color;

  /// Image scale.
  final double? scale;

  /// Width and height can also be specified from [Image] constructor.
  /// Default size is 100x100 logical pixels.
  /// Different size can be specified in [Image] parameters
  const SvgImageProvider(
    this.path, {
    this.size,
    this.scale,
    this.color,
  });

  @override
  Future<SvgImageKey> obtainKey(ImageConfiguration configuration) {
    final Color color = this.color ?? Colors.transparent;
    final double scale = this.scale ?? configuration.devicePixelRatio ?? 1.0;
    final double logicWidth = size?.width ?? configuration.size?.width ?? 100;
    final double logicHeight =
        size?.height ?? configuration.size?.height ?? 100;

    return SynchronousFuture<SvgImageKey>(
      SvgImageKey(
        path: path,
        scale: scale,
        color: color,
        pixelWidth: (logicWidth * scale).round(),
        pixelHeight: (logicHeight * scale).round(),
      ),
    );
  }

  @override
  ImageStreamCompleter loadImage(SvgImageKey key, ImageDecoderCallback decode) {
    return OneFrameImageStreamCompleter(
      _loadAsync(key, getFilterColor(color)),
    );
  }

  static Future<ImageInfo> _loadAsync(SvgImageKey key, Color color) async {
    final rawSvg = await rootBundle.loadString(key.path);
    final pictureInfo = await vg.loadPicture(
      SvgStringLoader(rawSvg, theme: SvgTheme(currentColor: color)),
      null,
      clipViewbox: false,
    );

    try {
      final image = pictureInfo.picture.toImageSync(
        pictureInfo.size.width.round(),
        pictureInfo.size.height.round(),
      );
      return ImageInfo(image: image);
    } finally {
      // Dispose of the Picture to release resources
      pictureInfo.picture.dispose();
    }
  }

  // Note: == and hashCode not overrided as changes in properties
  // (width, height and scale) are not observable from the here.
  // [SvgImageKey] instances will be compared instead.
  @override
  String toString() => '$runtimeType(${describeIdentity(path)})';

  // Running on web with Colors.transparent may throws the exception `Expected a value of type 'SkDeletable', but got one of type 'Null'`.
  static Color getFilterColor(Color? color) {
    if (kIsWeb && color == Colors.transparent) {
      return const Color(0x01ffffff);
    } else {
      return color ?? Colors.transparent;
    }
  }
}

@immutable
class SvgImageKey {
  const SvgImageKey({
    required this.path,
    required this.pixelWidth,
    required this.pixelHeight,
    required this.scale,
    this.color,
  });

  /// Path to svg asset.
  final String path;

  /// Width in physical pixels.
  /// Used when raterizing.
  final int pixelWidth;

  /// Height in physical pixels.
  /// Used when raterizing.
  final int pixelHeight;

  /// Color to tint the SVG
  final Color? color;

  /// Used to calculate logical size from physical, i.e.
  /// logicalWidth = [pixelWidth] / [scale],
  /// logicalHeight = [pixelHeight] / [scale].
  /// Should be equal to [MediaQueryData.devicePixelRatio].
  final double scale;

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }

    return other is SvgImageKey &&
        other.path == path &&
        other.pixelWidth == pixelWidth &&
        other.pixelHeight == pixelHeight &&
        other.scale == scale &&
        other.color == color;
  }

  @override
  int get hashCode => Object.hash(
    path,
    pixelWidth,
    pixelHeight,
    scale,
    color,
  );
}
