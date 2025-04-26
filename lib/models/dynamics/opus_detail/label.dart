class Label {
	String? bgColor;
	int? bgStyle;
	String? borderColor;
	String? imgLabelUriHans;
	String? imgLabelUriHansStatic;
	String? imgLabelUriHant;
	String? imgLabelUriHantStatic;
	String? labelTheme;
	String? path;
	String? text;
	String? textColor;
	bool? useImgLabel;

	Label({
		this.bgColor, 
		this.bgStyle, 
		this.borderColor, 
		this.imgLabelUriHans, 
		this.imgLabelUriHansStatic, 
		this.imgLabelUriHant, 
		this.imgLabelUriHantStatic, 
		this.labelTheme, 
		this.path, 
		this.text, 
		this.textColor, 
		this.useImgLabel, 
	});

	factory Label.fromJson(Map<String, dynamic> json) => Label(
				bgColor: json['bg_color'] as String?,
				bgStyle: json['bg_style'] as int?,
				borderColor: json['border_color'] as String?,
				imgLabelUriHans: json['img_label_uri_hans'] as String?,
				imgLabelUriHansStatic: json['img_label_uri_hans_static'] as String?,
				imgLabelUriHant: json['img_label_uri_hant'] as String?,
				imgLabelUriHantStatic: json['img_label_uri_hant_static'] as String?,
				labelTheme: json['label_theme'] as String?,
				path: json['path'] as String?,
				text: json['text'] as String?,
				textColor: json['text_color'] as String?,
				useImgLabel: json['use_img_label'] as bool?,
			);

	Map<String, dynamic> toJson() => {
				'bg_color': bgColor,
				'bg_style': bgStyle,
				'border_color': borderColor,
				'img_label_uri_hans': imgLabelUriHans,
				'img_label_uri_hans_static': imgLabelUriHansStatic,
				'img_label_uri_hant': imgLabelUriHant,
				'img_label_uri_hant_static': imgLabelUriHantStatic,
				'label_theme': labelTheme,
				'path': path,
				'text': text,
				'text_color': textColor,
				'use_img_label': useImgLabel,
			};
}
