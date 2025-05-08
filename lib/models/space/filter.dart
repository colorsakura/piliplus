class SpaceTabFilter {
  SpaceTabFilter({
    this.text,
    required this.meta,
    this.tabName,
  });

  String? text;
  late String meta;
  String? tabName;

  SpaceTabFilter.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    meta = json['meta'] ?? 'all';
    tabName = json['tab_ame'];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is SpaceTabFilter) {
      return meta == other.meta;
    }
    return false;
  }

  @override
  int get hashCode => meta.hashCode;
}
