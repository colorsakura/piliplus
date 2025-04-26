class Remote {
	String? bfsStyle;
	String? url;

	Remote({this.bfsStyle, this.url});

	factory Remote.fromJson(Map<String, dynamic> json) => Remote(
				bfsStyle: json['bfs_style'] as String?,
				url: json['url'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'bfs_style': bfsStyle,
				'url': url,
			};
}
