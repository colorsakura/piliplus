class Like {
	int? count;
	bool? forbidden;
	bool? status;

	Like({this.count, this.forbidden, this.status});

	factory Like.fromJson(Map<String, dynamic> json) => Like(
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
