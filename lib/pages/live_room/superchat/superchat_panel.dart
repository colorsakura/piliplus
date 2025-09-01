import 'package:PiliPlus/pages/live_room/controller.dart';
import 'package:PiliPlus/pages/live_room/superchat/superchat_card.dart';
import 'package:PiliPlus/pages/search/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SuperChatPanel extends StatefulWidget {
  const SuperChatPanel({
    super.key,
    required this.controller,
  });

  final LiveRoomController controller;

  @override
  State<SuperChatPanel> createState() => _SuperChatPanelState();
}

class _SuperChatPanelState extends DebounceStreamState<SuperChatPanel, bool> {
  @override
  Duration get duration => const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        physics: const ClampingScrollPhysics(),
        itemCount: widget.controller.superChatMsg.length,
        itemBuilder: (context, index) {
          final item = widget.controller.superChatMsg[index];
          return SuperChatCard(
            key: Key(item.id.toString()),
            item: item,
            onRemove: () => ctr?.add(true),
          );
        },
        separatorBuilder: (_, _) => const SizedBox(height: 12),
      ),
    );
  }

  @override
  void onValueChanged(value) => widget.controller.clearSC();
}
