import 'package:json_annotation/json_annotation.dart';

import 'nameplate.dart';
import 'official_verify.dart';
import 'pendant.dart';
import 'vip.dart';

part 'author.g.dart';

@JsonSerializable()
class Author {
	int? mid;
	String? name;
	String? face;
	Pendant? pendant;
	@JsonKey(name: 'official_verify') 
	OfficialVerify? officialVerify;
	Nameplate? nameplate;
	Vip? vip;

	Author({
		this.mid, 
		this.name, 
		this.face, 
		this.pendant, 
		this.officialVerify, 
		this.nameplate, 
		this.vip, 
	});

	factory Author.fromJson(Map<String, dynamic> json) {
		return _$AuthorFromJson(json);
	}

	Map<String, dynamic> toJson() => _$AuthorToJson(this);
}
