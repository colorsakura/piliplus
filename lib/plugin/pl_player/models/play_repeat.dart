enum PlayRepeat {
  pause,
  listOrder,
  singleCycle,
  listCycle,
  autoPlayRelated,
}

extension PlayRepeatExtension on PlayRepeat {
  static const List<String> _descList = <String>[
    '播完暂停',
    '顺序播放',
    '单个循环',
    '列表循环',
    '自动连播',
  ];
  String get description => _descList[index];

  static const List<double> _valueList = [
    1,
    2,
    3,
    4,
    5,
  ];
  double get value => _valueList[index];
  double get defaultValue => _valueList[1];
}
