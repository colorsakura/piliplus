class SpaceTabFilter {
  const SpaceTabFilter({
    this.text,
    required this.meta,
    this.tabName,
  });

  final String? text;
  final String meta;
  final String? tabName;

  factory SpaceTabFilter.fromJson(Map<String, dynamic> json) => SpaceTabFilter(
        text: json['text'],
        meta: json['meta'] ?? 'all',
        tabName: json['tab_ame'],
      );

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
