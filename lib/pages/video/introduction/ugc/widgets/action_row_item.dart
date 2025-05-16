import 'package:PiliPlus/utils/feed_back.dart';
import 'package:flutter/material.dart';

class ActionRowItem extends StatelessWidget {
  final Icon? icon;
  final Icon? selectIcon;
  final Function? onTap;
  final bool? isLoading;
  final String? text;
  final bool selectStatus;
  final Function? onLongPress;

  const ActionRowItem({
    super.key,
    this.icon,
    this.selectIcon,
    this.onTap,
    this.isLoading,
    this.text,
    this.selectStatus = false,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: selectStatus
          ? theme.colorScheme.primaryContainer.withValues(alpha: 0.6)
          : theme.highlightColor.withValues(alpha: 0.2),
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => {
          feedBack(),
          onTap?.call(),
        },
        onLongPress: () {
          feedBack();
          onLongPress?.call();
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon!.icon!,
                    size: 13,
                    color: selectStatus
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onSecondaryContainer),
                const SizedBox(width: 6),
              ],
              AnimatedOpacity(
                opacity: isLoading! ? 0 : 1,
                duration: const Duration(milliseconds: 200),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: Text(
                    text ?? '',
                    key: ValueKey<String>(text ?? ''),
                    style: TextStyle(
                        color: selectStatus ? theme.colorScheme.primary : null,
                        fontSize: theme.textTheme.labelMedium!.fontSize),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
