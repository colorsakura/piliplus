import 'pic.dart';
import 'text.dart';

class Paragraph {
  int? align;
  int? paraType;
  ParagraphText? text;
  Pic? pic;
  Line? line;

  Paragraph({this.align, this.paraType, this.text, this.pic, this.line});

  factory Paragraph.fromJson(Map<String, dynamic> json) => Paragraph(
        align: json['align'] as int?,
        paraType: json['para_type'] as int?,
        text: json['text'] == null
            ? null
            : ParagraphText.fromJson(json['text'] as Map<String, dynamic>),
        pic: json['pic'] == null
            ? null
            : Pic.fromJson(json['pic'] as Map<String, dynamic>),
        line: json['line'] == null ? null : Line.fromJson(json['line']),
      );

  Map<String, dynamic> toJson() => {
        'align': align,
        'para_type': paraType,
        'text': text?.toJson(),
        'pic': pic?.toJson(),
      };
}

class Line {
  Line({
    this.pic,
  });
  Pic? pic;

  Line.fromJson(Map<String, dynamic> json) {
    pic = json['pic'] == null ? null : Pic.fromJson(json['pic']);
  }
}
