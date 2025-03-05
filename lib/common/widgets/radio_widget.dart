import 'package:flutter/material.dart';

Widget radioWidget<T>({
  required T value,
  T? groupValue,
  required ValueChanged onChanged,
  required String title,
  EdgeInsetsGeometry? padding,
}) {
  Widget child() => Row(
        children: [
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          Text(title),
        ],
      );
  return InkWell(
    onTap: () => onChanged(value),
    child: padding != null
        ? Padding(
            padding: padding,
            child: child(),
          )
        : child(),
  );
}
