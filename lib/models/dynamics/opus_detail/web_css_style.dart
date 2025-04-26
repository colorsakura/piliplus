class WebCssStyle {
	String? borderRadius;

	WebCssStyle({this.borderRadius});

	factory WebCssStyle.fromJson(Map<String, dynamic> json) => WebCssStyle(
				borderRadius: json['borderRadius'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'borderRadius': borderRadius,
			};
}
