class FavTopicModel {
  int? id;
  String? name;
  int? view;
  int? discuss;
  String? jumpUrl;
  String? statDesc;
  bool? showInteractData;

  FavTopicModel({
    this.id,
    this.name,
    this.view,
    this.discuss,
    this.jumpUrl,
    this.statDesc,
    this.showInteractData,
  });

  factory FavTopicModel.fromJson(Map<String, dynamic> json) => FavTopicModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        view: json['view'] as int?,
        discuss: json['discuss'] as int?,
        jumpUrl: json['jump_url'] as String?,
        statDesc: json['stat_desc'] as String?,
        showInteractData: json['show_interact_data'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'view': view,
        'discuss': discuss,
        'jump_url': jumpUrl,
        'stat_desc': statDesc,
        'show_interact_data': showInteractData,
      };
}
