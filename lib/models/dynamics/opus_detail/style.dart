class Style {
  Style({
    this.bold,
    this.italic,
    this.strikethrough,
  });
  bool? bold;
  bool? italic;
  bool? strikethrough;

  factory Style.fromJson(Map<String, dynamic> json) => Style(
        bold: json['bold'],
        italic: json['italic'],
        strikethrough: json['strikethrough'],
      );

  Map<String, dynamic> toJson() => {
        'bold': bold,
        'italic': italic,
        'strikethrough': strikethrough,
      };
}
