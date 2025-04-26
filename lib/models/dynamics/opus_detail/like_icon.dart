class LikeIcon {
	String? actionUrl;
	String? endUrl;
	int? id;
	String? startUrl;

	LikeIcon({this.actionUrl, this.endUrl, this.id, this.startUrl});

	factory LikeIcon.fromJson(Map<String, dynamic> json) => LikeIcon(
				actionUrl: json['action_url'] as String?,
				endUrl: json['end_url'] as String?,
				id: json['id'] as int?,
				startUrl: json['start_url'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'action_url': actionUrl,
				'end_url': endUrl,
				'id': id,
				'start_url': startUrl,
			};
}
