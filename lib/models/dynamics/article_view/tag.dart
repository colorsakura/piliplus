class Tag {
	int? tid;
	String? name;

	Tag({this.tid, this.name});

	factory Tag.fromJson(Map<String, dynamic> json) => Tag(
				tid: json['tid'] as int?,
				name: json['name'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'tid': tid,
				'name': name,
			};
}
