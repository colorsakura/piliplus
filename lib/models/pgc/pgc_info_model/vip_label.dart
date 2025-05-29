class VipLabel {
  String? bgColor;
  int? bgStyle;
  String? borderColor;
  String? text;
  String? textColor;

  VipLabel({
    this.bgColor,
    this.bgStyle,
    this.borderColor,
    this.text,
    this.textColor,
  });

  factory VipLabel.fromJson(Map<String, dynamic> json) => VipLabel(
        bgColor: json['bg_color'] as String?,
        bgStyle: json['bg_style'] as int?,
        borderColor: json['border_color'] as String?,
        text: json['text'] as String?,
        textColor: json['text_color'] as String?,
      );
}
