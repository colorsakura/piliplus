import 'paragraph.dart';

class ModuleContent {
	List<Paragraph>? paragraphs;

	ModuleContent({this.paragraphs});

	factory ModuleContent.fromJson(Map<String, dynamic> json) => ModuleContent(
				paragraphs: (json['paragraphs'] as List<dynamic>?)
						?.map((e) => Paragraph.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'paragraphs': paragraphs?.map((e) => e.toJson()).toList(),
			};
}
