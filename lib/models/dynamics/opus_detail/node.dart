import 'rich.dart';
import 'word.dart';

class Node {
  String? type;
  Word? word;
  Rich? rich;

  Node({
    this.type,
    this.word,
    this.rich,
  });

  factory Node.fromJson(Map<String, dynamic> json) => Node(
        type: json['type'] as String?,
        word: json['word'] == null
            ? null
            : Word.fromJson(json['word'] as Map<String, dynamic>),
        rich: json['rich'] == null
            ? null
            : Rich.fromJson(json['rich'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'word': word?.toJson(),
        'rich': rich?.toJson(),
      };
}
