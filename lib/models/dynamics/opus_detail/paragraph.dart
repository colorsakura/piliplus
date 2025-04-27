import 'pic.dart';
import 'text.dart';

class Paragraph {
  int? align;
  int? paraType;
  ParagraphText? text;
  Pic? pic;
  Line? line;
  LinkCard? linkCard;
  Code? code;

  Paragraph({
    this.align,
    this.paraType,
    this.text,
    this.pic,
    this.line,
    this.linkCard,
    this.code,
  });

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
        linkCard: json['link_card'] == null
            ? null
            : LinkCard.fromJson(json['link_card']),
        code: json['code'] == null ? null : Code.fromJson(json['code']),
      );

  Map<String, dynamic> toJson() => {
        'align': align,
        'para_type': paraType,
        'text': text?.toJson(),
        'pic': pic?.toJson(),
      };
}

class Code {
  String? content;
  String? lang;

  Code.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    lang = json['lang'];
  }
}

class Ugc {
  String? cover;
  String? descSecond;
  String? duration;
  String? headText;
  String? idStr;
  String? jumpUrl;
  bool? multiLine;
  String? title;

  Ugc.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    descSecond = json['desc_second'];
    duration = json['duration'];
    headText = json['head_text'];
    idStr = json['id_str'];
    jumpUrl = json['jump_url'];
    multiLine = json['multi_line'];
    title = json['title'];
  }
}

class Card {
  Card({
    this.oid,
    this.type,
    this.ugc,
  });
  String? oid;
  String? type;
  Ugc? ugc;

  Card.fromJson(Map<String, dynamic> json) {
    oid = json['oid'];
    type = json['type'];
    ugc = json['ugc'] == null ? null : Ugc.fromJson(json['ugc']);
  }
}

class LinkCard {
  LinkCard({
    this.card,
  });
  Card? card;

  LinkCard.fromJson(Map<String, dynamic> json) {
    card = json['card'] == null ? null : Card.fromJson(json['card']);
  }
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
