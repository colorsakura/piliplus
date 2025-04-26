import 'module_author.dart';
import 'module_bottom.dart';
import 'module_content.dart';
import 'module_extend.dart';
import 'module_stat.dart';
import 'module_title.dart';

class OpusModule {
  ModuleTitle? moduleTitle;
  String? moduleType;
  ModuleAuthor? moduleAuthor;
  ModuleContent? moduleContent;
  ModuleExtend? moduleExtend;
  ModuleBottom? moduleBottom;
  ModuleStat? moduleStat;

  OpusModule({
    this.moduleTitle,
    this.moduleType,
    this.moduleAuthor,
    this.moduleContent,
    this.moduleExtend,
    this.moduleBottom,
    this.moduleStat,
  });

  factory OpusModule.fromJson(Map<String, dynamic> json) => OpusModule(
        moduleTitle: json['module_title'] == null
            ? null
            : ModuleTitle.fromJson(
                json['module_title'] as Map<String, dynamic>),
        moduleType: json['module_type'] as String?,
        moduleAuthor: json['module_author'] == null
            ? null
            : ModuleAuthor.fromJson(
                json['module_author'] as Map<String, dynamic>),
        moduleContent: json['module_content'] == null
            ? null
            : ModuleContent.fromJson(
                json['module_content'] as Map<String, dynamic>),
        moduleExtend: json['module_extend'] == null
            ? null
            : ModuleExtend.fromJson(
                json['module_extend'] as Map<String, dynamic>),
        moduleBottom: json['module_bottom'] == null
            ? null
            : ModuleBottom.fromJson(
                json['module_bottom'] as Map<String, dynamic>),
        moduleStat: json['module_stat'] == null
            ? null
            : ModuleStat.fromJson(json['module_stat'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'module_title': moduleTitle?.toJson(),
        'module_type': moduleType,
        'module_author': moduleAuthor?.toJson(),
        'module_content': moduleContent?.toJson(),
        'module_extend': moduleExtend?.toJson(),
        'module_bottom': moduleBottom?.toJson(),
        'module_stat': moduleStat?.toJson(),
      };
}
