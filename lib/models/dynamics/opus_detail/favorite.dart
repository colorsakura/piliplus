class Favorite {
	int? count;
	bool? forbidden;
	bool? status;

	Favorite({this.count, this.forbidden, this.status});

	factory Favorite.fromJson(Map<String, dynamic> json) => Favorite(
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
