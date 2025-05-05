class Avatar {
	String? cover;
	String? event;
	String? text;
	int? uid;
	String? url;

	Avatar({this.cover, this.event, this.text, this.uid, this.url});

	factory Avatar.fromJson(Map<String, dynamic> json) => Avatar(
				cover: json['cover'] as String?,
				event: json['event'] as String?,
				text: json['text'] as String?,
				uid: json['uid'] as int?,
				url: json['url'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'cover': cover,
				'event': event,
				'text': text,
				'uid': uid,
				'url': url,
			};
}
