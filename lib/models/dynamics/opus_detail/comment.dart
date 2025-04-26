class Comment {
	int? count;
	bool? forbidden;

	Comment({this.count, this.forbidden});

	factory Comment.fromJson(Map<String, dynamic> json) => Comment(
				count: json['count'] as int?,
				forbidden: json['forbidden'] as bool?,
			);

	Map<String, dynamic> toJson() => {
				'count': count,
				'forbidden': forbidden,
			};
}
