import 'style.dart';

class Rich {
  Style? style;
  String? jumpUrl;
  String? origText;
  String? text;

  Rich({
    this.style,
    this.jumpUrl,
    this.origText,
    this.text,
  });

  factory Rich.fromJson(Map<String, dynamic> json) => Rich(
        style: json['style'] == null
            ? null
            : Style.fromJson(json['style'] as Map<String, dynamic>),
        jumpUrl: json['jump_url'] as String?,
        origText: json['orig_text'] as String?,
        text: json['text'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'style': style?.toJson(),
        'jump_url': jumpUrl,
        'orig_text': origText,
        'text': text,
      };
}
