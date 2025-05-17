class Attributes {
  String? clazz;

  Attributes({this.clazz});

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        clazz: json['class'] as String?,
      );
}
