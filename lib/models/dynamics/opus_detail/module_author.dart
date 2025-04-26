import 'avatar.dart';
import 'official.dart';
import 'pendant.dart';
import 'vip.dart';

class ModuleAuthor {
	Avatar? avatar;
	String? face;
	bool? faceNft;
	dynamic following;
	String? jumpUrl;
	String? label;
	int? mid;
	String? name;
	Official? official;
	Pendant? pendant;
	String? pubLocationText;
	String? pubTime;
	int? pubTs;
	String? viewsText;
	Vip? vip;

	ModuleAuthor({
		this.avatar, 
		this.face, 
		this.faceNft, 
		this.following, 
		this.jumpUrl, 
		this.label, 
		this.mid, 
		this.name, 
		this.official, 
		this.pendant, 
		this.pubLocationText, 
		this.pubTime, 
		this.pubTs, 
		this.viewsText, 
		this.vip, 
	});

	factory ModuleAuthor.fromJson(Map<String, dynamic> json) => ModuleAuthor(
				avatar: json['avatar'] == null
						? null
						: Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
				face: json['face'] as String?,
				faceNft: json['face_nft'] as bool?,
				following: json['following'] as dynamic,
				jumpUrl: json['jump_url'] as String?,
				label: json['label'] as String?,
				mid: json['mid'] as int?,
				name: json['name'] as String?,
				official: json['official'] == null
						? null
						: Official.fromJson(json['official'] as Map<String, dynamic>),
				pendant: json['pendant'] == null
						? null
						: Pendant.fromJson(json['pendant'] as Map<String, dynamic>),
				pubLocationText: json['pub_location_text'] as String?,
				pubTime: json['pub_time'] as String?,
				pubTs: json['pub_ts'] as int?,
				viewsText: json['views_text'] as String?,
				vip: json['vip'] == null
						? null
						: Vip.fromJson(json['vip'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'avatar': avatar?.toJson(),
				'face': face,
				'face_nft': faceNft,
				'following': following,
				'jump_url': jumpUrl,
				'label': label,
				'mid': mid,
				'name': name,
				'official': official?.toJson(),
				'pendant': pendant?.toJson(),
				'pub_location_text': pubLocationText,
				'pub_time': pubTime,
				'pub_ts': pubTs,
				'views_text': viewsText,
				'vip': vip?.toJson(),
			};
}
