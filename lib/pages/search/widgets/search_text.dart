import 'package:flutter/material.dart';

class SearchText extends StatelessWidget {
  final String text;
  final ValueChanged<String>? onTap;
  final ValueChanged<String>? onLongPress;
  final double? fontSize;
  final Color? bgColor;
  final Color? textColor;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry? padding;

  const SearchText({
    super.key,
    required this.text,
    this.onTap,
    this.onLongPress,
    this.fontSize,
    this.bgColor,
    this.textColor,
    this.textAlign,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? Theme.of(context).colorScheme.onInverseSurface,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        onTap: () {
          onTap?.call(text);
        },
        onLongPress: () {
          onLongPress?.call(text);
        },
        borderRadius: BorderRadius.circular(6),
        child: Padding(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
          child: Text(
            text,
            textAlign: textAlign,
            style: TextStyle(
              fontSize: fontSize,
              color:
                  textColor ?? Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
