import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:PiliPalaX/utils/storage.dart';

class SetSwitchItem extends StatefulWidget {
  final String? title;
  final String? subTitle;
  final String? setKey;
  final bool? defaultVal;
  final ValueChanged<bool>? onChanged;
  final bool? needReboot;
  final Widget? leading;
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? titleStyle;

  const SetSwitchItem({
    this.title,
    this.subTitle,
    this.setKey,
    this.defaultVal,
    this.onChanged,
    this.needReboot,
    this.leading,
    this.onTap,
    this.contentPadding,
    this.titleStyle,
    super.key,
  });

  @override
  State<SetSwitchItem> createState() => _SetSwitchItemState();
}

class _SetSwitchItemState extends State<SetSwitchItem> {
  late bool val;

  @override
  void initState() {
    super.initState();
    val = GStorage.setting
        .get(widget.setKey, defaultValue: widget.defaultVal ?? false);
  }

  void switchChange(value) async {
    val = value ?? !val;
    await GStorage.setting.put(widget.setKey, val);
    // if (widget.setKey == SettingBoxKey.autoUpdate && value == true) {
    //   Utils.checkUpdate();
    // }
    widget.onChanged?.call(val);
    if (widget.needReboot == true) {
      SmartDialog.showToast('重启生效');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = widget.titleStyle ??
        Theme.of(context).textTheme.titleMedium!.copyWith(
              color: widget.onTap != null && !val
                  ? Theme.of(context).colorScheme.outline
                  : null,
            );
    TextStyle subTitleStyle = Theme.of(context)
        .textTheme
        .labelMedium!
        .copyWith(color: Theme.of(context).colorScheme.outline);
    return ListTile(
      contentPadding: widget.contentPadding,
      enabled: widget.onTap != null ? val : true,
      enableFeedback: true,
      onTap: () =>
          widget.onTap != null ? widget.onTap?.call() : switchChange(null),
      title: Text(widget.title!, style: titleStyle),
      subtitle: widget.subTitle != null
          ? Text(widget.subTitle!, style: subTitleStyle)
          : null,
      leading: widget.leading,
      trailing: Transform.scale(
        alignment: Alignment.centerRight, // 缩放Switch的大小后保持右侧对齐, 避免右侧空隙过大
        scale: 0.8,
        child: Switch(
          thumbIcon:
              WidgetStateProperty.resolveWith<Icon?>((Set<WidgetState> states) {
            if (states.isNotEmpty && states.first == WidgetState.selected) {
              return const Icon(Icons.done);
            }
            return null; // All other states will use the default thumbIcon.
          }),
          value: val,
          onChanged: switchChange,
        ),
      ),
    );
  }
}
