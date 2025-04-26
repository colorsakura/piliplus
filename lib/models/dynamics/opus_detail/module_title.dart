class ModuleTitle {
	String? text;

	ModuleTitle({this.text});

	factory ModuleTitle.fromJson(Map<String, dynamic> json) => ModuleTitle(
				text: json['text'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'text': text,
			};
}
