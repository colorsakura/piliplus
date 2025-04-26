import 'nameplate.dart';
import 'official_verify.dart';
import 'pendant.dart';
import 'vip.dart';

class Author {
	int? mid;
	String? name;
	String? face;
	Pendant? pendant;
	OfficialVerify? officialVerify;
	Nameplate? nameplate;
	Vip? vip;
	int? fans;
	int? level;

	Author({
		this.mid, 
		this.name, 
		this.face, 
		this.pendant, 
		this.officialVerify, 
		this.nameplate, 
		this.vip, 
		this.fans, 
		this.level, 
	});

	factory Author.fromJson(Map<String, dynamic> json) => Author(
				mid: json['mid'] as int?,
				name: json['name'] as String?,
				face: json['face'] as String?,
				pendant: json['pendant'] == null
						? null
						: Pendant.fromJson(json['pendant'] as Map<String, dynamic>),
				officialVerify: json['official_verify'] == null
						? null
						: OfficialVerify.fromJson(json['official_verify'] as Map<String, dynamic>),
				nameplate: json['nameplate'] == null
						? null
						: Nameplate.fromJson(json['nameplate'] as Map<String, dynamic>),
				vip: json['vip'] == null
						? null
						: Vip.fromJson(json['vip'] as Map<String, dynamic>),
				fans: json['fans'] as int?,
				level: json['level'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'mid': mid,
				'name': name,
				'face': face,
				'pendant': pendant?.toJson(),
				'official_verify': officialVerify?.toJson(),
				'nameplate': nameplate?.toJson(),
				'vip': vip?.toJson(),
				'fans': fans,
				'level': level,
			};
}
