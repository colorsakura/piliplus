class CalendarButton {
	String? text;
	String? link;

	CalendarButton({this.text, this.link});

	factory CalendarButton.fromJson(Map<String, dynamic> json) {
		return CalendarButton(
			text: json['text'] as String?,
			link: json['link'] as String?,
		);
	}



	Map<String, dynamic> toJson() => {
				'text': text,
				'link': link,
			};
}
