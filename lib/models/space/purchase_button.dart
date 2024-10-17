import 'package:json_annotation/json_annotation.dart';

part 'purchase_button.g.dart';

@JsonSerializable()
class PurchaseButton {
	String? uri;
	String? title;

	PurchaseButton({this.uri, this.title});

	factory PurchaseButton.fromJson(Map<String, dynamic> json) {
		return _$PurchaseButtonFromJson(json);
	}

	Map<String, dynamic> toJson() => _$PurchaseButtonToJson(this);
}
