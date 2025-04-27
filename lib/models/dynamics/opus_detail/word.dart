import 'style.dart';

class Word {
  int? color;
  double? fontSize;
  Style? style;
  String? words;
  String? fontLevel;

  Word({
    this.color,
    this.fontSize,
    this.style,
    this.words,
    this.fontLevel,
  });

  factory Word.fromJson(Map<String, dynamic> json) => Word(
        color: json['color'] == null
            ? null
            : int.tryParse('0xFF${(json['color'] as String).substring(1)}'),
        fontSize: (json['font_size'] as num?)?.toDouble(),
        style: json['style'] == null
            ? null
            : Style.fromJson(json['style'] as Map<String, dynamic>),
        words: json['words'] as String?,
        fontLevel: json['font_level'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'color': color,
        'font_size': fontSize,
        'style': style?.toJson(),
        'words': words,
        'font_level': fontLevel,
      };
}
