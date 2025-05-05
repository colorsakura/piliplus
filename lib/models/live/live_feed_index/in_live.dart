class InLive {
	int? alphaLight;
	int? alphaNight;
	String? animationUrl;
	String? animationUrlHash;
	String? backgroundColorLight;
	String? backgroundColorNight;
	String? fontColor;
	String? text;

	InLive({
		this.alphaLight, 
		this.alphaNight, 
		this.animationUrl, 
		this.animationUrlHash, 
		this.backgroundColorLight, 
		this.backgroundColorNight, 
		this.fontColor, 
		this.text, 
	});

	factory InLive.fromJson(Map<String, dynamic> json) => InLive(
				alphaLight: json['alpha_light'] as int?,
				alphaNight: json['alpha_night'] as int?,
				animationUrl: json['animation_url'] as String?,
				animationUrlHash: json['animation_url_hash'] as String?,
				backgroundColorLight: json['background_color_light'] as String?,
				backgroundColorNight: json['background_color_night'] as String?,
				fontColor: json['font_color'] as String?,
				text: json['text'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'alpha_light': alphaLight,
				'alpha_night': alphaNight,
				'animation_url': animationUrl,
				'animation_url_hash': animationUrlHash,
				'background_color_light': backgroundColorLight,
				'background_color_night': backgroundColorNight,
				'font_color': fontColor,
				'text': text,
			};
}
