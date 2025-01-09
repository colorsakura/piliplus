enum DynamicBadgeMode { hidden, point, number }

extension DynamicBadgeModeDesc on DynamicBadgeMode {
  String get description => ['隐藏', '红点', '数字'][index];
}

enum MsgUnReadType { pm, reply, at, like, sysMsg }

extension MsgUnReadTypeExt on MsgUnReadType {
  String get title => ['私信', '回复我的', '@我', '收到的赞', '系统通知'][index];
}
