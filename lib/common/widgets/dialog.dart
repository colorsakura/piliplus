import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showConfirmDialog({
  required BuildContext context,
  required String title,
  String? content,
  required VoidCallback onConfirm,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: content == null ? null : Text(content),
        actions: [
          TextButton(
            onPressed: Get.back,
            child: Text(
              '取消',
              style: TextStyle(color: Theme.of(context).colorScheme.outline),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.back();
              onConfirm();
            },
            child: Text('确认'),
          ),
        ],
      );
    },
  );
}
