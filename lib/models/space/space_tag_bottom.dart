class Item {
  Item({
    this.type,
    this.title,
    this.uri,
    this.icon,
  });
  String? type;
  String? title;
  String? uri;
  String? icon;

  Item.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    uri = json['uri'];
    icon = json['icon'];
  }
}
