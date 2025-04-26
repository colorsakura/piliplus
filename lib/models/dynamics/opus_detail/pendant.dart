class Pendant {
	int? expire;
	String? image;
	String? imageEnhance;
	String? imageEnhanceFrame;
	int? nPid;
	String? name;
	int? pid;

	Pendant({
		this.expire, 
		this.image, 
		this.imageEnhance, 
		this.imageEnhanceFrame, 
		this.nPid, 
		this.name, 
		this.pid, 
	});

	factory Pendant.fromJson(Map<String, dynamic> json) => Pendant(
				expire: json['expire'] as int?,
				image: json['image'] as String?,
				imageEnhance: json['image_enhance'] as String?,
				imageEnhanceFrame: json['image_enhance_frame'] as String?,
				nPid: json['n_pid'] as int?,
				name: json['name'] as String?,
				pid: json['pid'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'expire': expire,
				'image': image,
				'image_enhance': imageEnhance,
				'image_enhance_frame': imageEnhanceFrame,
				'n_pid': nPid,
				'name': name,
				'pid': pid,
			};
}
