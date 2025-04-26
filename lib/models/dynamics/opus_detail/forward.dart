class Forward {
	int? count;
	bool? forbidden;

	Forward({this.count, this.forbidden});

	factory Forward.fromJson(Map<String, dynamic> json) => Forward(
				count: json['count'] as int?,
				forbidden: json['forbidden'] as bool?,
			);

	Map<String, dynamic> toJson() => {
				'count': count,
				'forbidden': forbidden,
			};
}
