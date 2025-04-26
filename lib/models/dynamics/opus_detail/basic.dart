import 'like_icon.dart';

class Basic {
	String? commentIdStr;
	int? commentType;
	LikeIcon? likeIcon;
	String? ridStr;
	String? title;
	int? uid;

	Basic({
		this.commentIdStr, 
		this.commentType, 
		this.likeIcon, 
		this.ridStr, 
		this.title, 
		this.uid, 
	});

	factory Basic.fromJson(Map<String, dynamic> json) => Basic(
				commentIdStr: json['comment_id_str'] as String?,
				commentType: json['comment_type'] as int?,
				likeIcon: json['like_icon'] == null
						? null
						: LikeIcon.fromJson(json['like_icon'] as Map<String, dynamic>),
				ridStr: json['rid_str'] as String?,
				title: json['title'] as String?,
				uid: json['uid'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'comment_id_str': commentIdStr,
				'comment_type': commentType,
				'like_icon': likeIcon?.toJson(),
				'rid_str': ridStr,
				'title': title,
				'uid': uid,
			};
}
