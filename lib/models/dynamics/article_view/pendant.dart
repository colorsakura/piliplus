class Pendant {
	int? pid;
	String? name;
	String? image;
	int? expire;

	Pendant({this.pid, this.name, this.image, this.expire});

	factory Pendant.fromJson(Map<String, dynamic> json) => Pendant(
				pid: json['pid'] as int?,
				name: json['name'] as String?,
				image: json['image'] as String?,
				expire: json['expire'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'pid': pid,
				'name': name,
				'image': image,
				'expire': expire,
			};
}
