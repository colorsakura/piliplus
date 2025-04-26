import 'web_css_style.dart';

class GeneralConfig {
	WebCssStyle? webCssStyle;

	GeneralConfig({this.webCssStyle});

	factory GeneralConfig.fromJson(Map<String, dynamic> json) => GeneralConfig(
				webCssStyle: json['web_css_style'] == null
						? null
						: WebCssStyle.fromJson(json['web_css_style'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'web_css_style': webCssStyle?.toJson(),
			};
}
