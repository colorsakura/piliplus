import 'package:json_annotation/json_annotation.dart';

part 'attention_tip.g.dart';

@JsonSerializable()
class AttentionTip {
	@JsonKey(name: 'card_num') 
	int? cardNum;
	String? tip;

	AttentionTip({this.cardNum, this.tip});

	factory AttentionTip.fromJson(Map<String, dynamic> json) {
		return _$AttentionTipFromJson(json);
	}

	Map<String, dynamic> toJson() => _$AttentionTipToJson(this);
}
