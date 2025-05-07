class TopicItem {
	int? id;
	String? name;
	int? view;
	int? discuss;
	int? fav;
	int? dynamics;
	String? jumpUrl;
	String? backColor;
	String? description;
	String? sharePic;
	String? shareUrl;
	int? ctime;
	bool? showInteractData;

	TopicItem({
		this.id, 
		this.name, 
		this.view, 
		this.discuss, 
		this.fav, 
		this.dynamics, 
		this.jumpUrl, 
		this.backColor, 
		this.description, 
		this.sharePic, 
		this.shareUrl, 
		this.ctime, 
		this.showInteractData, 
	});

	factory TopicItem.fromJson(Map<String, dynamic> json) => TopicItem(
				id: json['id'] as int?,
				name: json['name'] as String?,
				view: json['view'] as int?,
				discuss: json['discuss'] as int?,
				fav: json['fav'] as int?,
				dynamics: json['dynamics'] as int?,
				jumpUrl: json['jump_url'] as String?,
				backColor: json['back_color'] as String?,
				description: json['description'] as String?,
				sharePic: json['share_pic'] as String?,
				shareUrl: json['share_url'] as String?,
				ctime: json['ctime'] as int?,
				showInteractData: json['show_interact_data'] as bool?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'view': view,
				'discuss': discuss,
				'fav': fav,
				'dynamics': dynamics,
				'jump_url': jumpUrl,
				'back_color': backColor,
				'description': description,
				'share_pic': sharePic,
				'share_url': shareUrl,
				'ctime': ctime,
				'show_interact_data': showInteractData,
			};
}
