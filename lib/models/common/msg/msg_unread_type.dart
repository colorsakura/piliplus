enum MsgUnReadType { pm, reply, at, like, sysMsg }

extension MsgUnReadTypeExt on MsgUnReadType {
  String get title => const ['私信', '回复我的', '@我', '收到的赞', '系统通知'][index];
}
