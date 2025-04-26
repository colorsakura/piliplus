class Coin {
	int? count;
	bool? forbidden;
	bool? status;

	Coin({this.count, this.forbidden, this.status});

	factory Coin.fromJson(Map<String, dynamic> json) => Coin(
				count: json['count'] as int?,
				forbidden: json['forbidden'] as bool?,
				status: json['status'] as bool?,
			);

	Map<String, dynamic> toJson() => {
				'count': count,
				'forbidden': forbidden,
				'status': status,
			};
}
