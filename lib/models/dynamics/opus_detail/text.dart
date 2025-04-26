import 'node.dart';

class ParagraphText {
  List<Node>? nodes;

  ParagraphText({this.nodes});

  factory ParagraphText.fromJson(Map<String, dynamic> json) => ParagraphText(
        nodes: (json['nodes'] as List<dynamic>?)
            ?.map((e) => Node.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'nodes': nodes?.map((e) => e.toJson()).toList(),
      };
}
