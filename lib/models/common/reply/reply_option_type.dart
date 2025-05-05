import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum ReplyOptionType { allow, close, choose }

extension ReplyOptionTypeExt on ReplyOptionType {
  String get title => const ['允许评论', '关闭评论', '精选评论'][index];

  IconData get iconData => switch (this) {
        ReplyOptionType.allow => MdiIcons.commentTextOutline,
        ReplyOptionType.close => MdiIcons.commentOffOutline,
        ReplyOptionType.choose => MdiIcons.commentProcessingOutline
      };
}
