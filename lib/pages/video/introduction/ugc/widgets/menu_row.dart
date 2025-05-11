import 'package:PiliPlus/utils/feed_back.dart';
import 'package:flutter/material.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({
    super.key,
    this.isLoading,
  });
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      color: theme.colorScheme.surface,
      padding: const EdgeInsets.only(top: 9, bottom: 9, left: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          ActionRowLineItem(
            onTap: () => {},
            isLoading: isLoading,
            text: '推荐',
            selectStatus: false,
          ),
          const SizedBox(width: 8),
          ActionRowLineItem(
            onTap: () => {},
            isLoading: isLoading,
            text: '弹幕',
            selectStatus: false,
          ),
          const SizedBox(width: 8),
          ActionRowLineItem(
            onTap: () => {},
            isLoading: isLoading,
            text: '评论列表',
            selectStatus: false,
          ),
          const SizedBox(width: 8),
          ActionRowLineItem(
            onTap: () => {},
            isLoading: isLoading,
            text: '播放列表',
            selectStatus: false,
          ),
        ]),
      ),
    );
  }

  Widget actionRowLineItem(
      ThemeData theme, Function? onTap, bool? isLoading, String? text,
      {bool selectStatus = false}) {
    return Material(
      color: selectStatus
          ? theme.highlightColor.withOpacity(0.2)
          : Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => {
          feedBack(),
          onTap?.call(),
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(13, 5.5, 13, 4.5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(
              color: selectStatus
                  ? Colors.transparent
                  : theme.highlightColor.withOpacity(0.2),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedOpacity(
                opacity: isLoading! ? 0 : 1,
                duration: const Duration(milliseconds: 200),
                child: Text(
                  text!,
                  style: TextStyle(
                      fontSize: 13,
                      color: selectStatus
                          ? theme.colorScheme.onSurface
                          : theme.colorScheme.outline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionRowLineItem extends StatelessWidget {
  const ActionRowLineItem({
    super.key,
    required this.selectStatus,
    this.onTap,
    this.text,
    this.isLoading = false,
    this.iconData,
    this.icon,
  });
  final bool selectStatus;
  final Function? onTap;
  final bool? isLoading;
  final String? text;
  final IconData? iconData;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: selectStatus
          ? theme.colorScheme.secondaryContainer
          : Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => {
          feedBack(),
          onTap?.call(),
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(13, 5.5, 13, 4.5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(
              color: selectStatus
                  ? Colors.transparent
                  : theme.colorScheme.secondaryContainer,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (iconData != null)
                Icon(
                  iconData,
                  size: 13,
                  color: selectStatus
                      ? theme.colorScheme.onSecondaryContainer
                      : theme.colorScheme.outline,
                )
              else if (icon != null)
                icon!,
              AnimatedOpacity(
                opacity: isLoading! ? 0 : 1,
                duration: const Duration(milliseconds: 200),
                child: Text(
                  text!,
                  style: TextStyle(
                      fontSize: 13,
                      color: selectStatus
                          ? theme.colorScheme.onSecondaryContainer
                          : theme.colorScheme.outline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
