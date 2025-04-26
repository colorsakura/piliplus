class Official {
	String? desc;
	int? role;
	String? title;
	int? type;

	Official({this.desc, this.role, this.title, this.type});

	factory Official.fromJson(Map<String, dynamic> json) => Official(
				desc: json['desc'] as String?,
				role: json['role'] as int?,
				title: json['title'] as String?,
				type: json['type'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'desc': desc,
				'role': role,
				'title': title,
				'type': type,
			};
}
