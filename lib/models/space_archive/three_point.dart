class ThreePoint {
  ThreePoint({
    this.type,
    this.icon,
    this.text,
  });

  String? type;
  String? icon;
  String? text;

  ThreePoint.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    icon = json['icon'];
    text = json['text'];
  }
}
