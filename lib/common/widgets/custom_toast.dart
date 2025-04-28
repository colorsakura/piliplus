import 'package:flutter/material.dart';
import 'package:PiliPlus/utils/storage.dart';

class CustomToast extends StatelessWidget {
  const CustomToast({super.key, required this.msg});

  final String msg;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final double toastOpacity = GStorage.setting
        .get(SettingBoxKey.defaultToastOp, defaultValue: 1.0) as double;
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom + 30),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(toastOpacity),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        msg,
        style: TextStyle(
          fontSize: 13,
          color: theme.colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, required this.msg});

  ///loading msg
  final String msg;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final onSurfaceVariant = theme.colorScheme.onSurfaceVariant;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: theme.dialogBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        //loading animation
        CircularProgressIndicator(
          strokeWidth: 3,
          valueColor: AlwaysStoppedAnimation(onSurfaceVariant),
        ),

        //msg
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Text(msg, style: TextStyle(color: onSurfaceVariant)),
        ),
      ]),
    );
  }
}
