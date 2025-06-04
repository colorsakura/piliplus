class Coin {
  int? maxNum;
  int? coinNumber;

  Coin({this.maxNum, this.coinNumber});

  factory Coin.fromJson(Map<String, dynamic> json) => Coin(
        maxNum: json['max_num'] as int?,
        coinNumber: json['coin_number'] as int?,
      );
}
