import 'package:flutter/material.dart';

Widget radioWidget<T>({
  required T value,
  T? groupValue,
  required ValueChanged onChanged,
  required String title,
  double? paddingStart,
}) {
  return InkWell(
    onTap: () => onChanged(value),
    child: Row(
      children: [
        if (paddingStart != null) SizedBox(width: paddingStart),
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        Text(title),
      ],
    ),
  );
}
