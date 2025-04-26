class ShareInfo {
	String? pic;
	String? summary;
	String? title;

	ShareInfo({this.pic, this.summary, this.title});

	factory ShareInfo.fromJson(Map<String, dynamic> json) => ShareInfo(
				pic: json['pic'] as String?,
				summary: json['summary'] as String?,
				title: json['title'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'pic': pic,
				'summary': summary,
				'title': title,
			};
}
