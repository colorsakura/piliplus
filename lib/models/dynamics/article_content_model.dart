class ArticleContentModel {
  ArticleContentModel({
    this.attributes,
    this.insert,
  });
  Attributes? attributes;
  dynamic insert;

  ArticleContentModel.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] == null
        ? null
        : Attributes.fromJson(json['attributes']);
    insert = json['insert'] == null
        ? null
        : json['attributes']?['class'] == 'normal-img'
            ? Insert.fromJson(json['insert'])
            : json['insert'];
  }
}

class Insert {
  Insert({
    this.nativeImage,
  });
  NativeImage? nativeImage;

  Insert.fromJson(Map<String, dynamic> json) {
    nativeImage = json['native-image'] == null
        ? null
        : NativeImage.fromJson(json['native-image']);
  }
}

class NativeImage {
  NativeImage({
    this.alt,
    this.url,
    this.width,
    this.height,
    this.size,
    this.status,
  });

  dynamic alt;
  dynamic url;
  dynamic width;
  dynamic height;
  dynamic size;
  dynamic status;

  NativeImage.fromJson(Map<String, dynamic> json) {
    alt = json['alt'];
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    status = json['status'];
  }
}

class Attributes {
  Attributes({
    this.clazz,
  });
  String? clazz;
  bool? bold;

  Attributes.fromJson(Map<String, dynamic> json) {
    clazz = json['class'];
    bold = json['bold'];
  }
}
