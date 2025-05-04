enum PlaySpeed {
  pointFive,
  pointSevenFive,

  one,
  onePointTwoFive,
  onePointFive,
  onePointSevenFive,

  two,
  three,
}

extension PlaySpeedExtension on PlaySpeed {
  static const List<String> _descList = [
    '0.5',
    '0.75',
    '正常',
    '1.25',
    '1.5',
    '1.75',
    '2.0',
    '3.0'
  ];
  String get description => _descList[index];

  static const List<double> _valueList = [
    0.5,
    0.75,
    1.0,
    1.25,
    1.5,
    1.75,
    2.0,
    3.0,
  ];
  double get value => _valueList[index];
  double get defaultValue => _valueList[3];
}
