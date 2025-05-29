class Relation {
  int? mid;
  int? attribute;
  int? mtime;
  dynamic tag;
  int? special;

  Relation({this.mid, this.attribute, this.mtime, this.tag, this.special});

  factory Relation.fromJson(Map<String, dynamic> json) => Relation(
        mid: json['mid'] as int?,
        attribute: json['attribute'] as int?,
        mtime: json['mtime'] as int?,
        tag: json['tag'] as dynamic,
        special: json['special'] as int?,
      );
}
