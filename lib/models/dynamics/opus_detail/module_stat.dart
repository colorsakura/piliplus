import 'coin.dart';
import 'comment.dart';
import 'favorite.dart';
import 'forward.dart';
import 'like.dart';

class ModuleStat {
	Coin? coin;
	Comment? comment;
	Favorite? favorite;
	Forward? forward;
	Like? like;

	ModuleStat({
		this.coin, 
		this.comment, 
		this.favorite, 
		this.forward, 
		this.like, 
	});

	factory ModuleStat.fromJson(Map<String, dynamic> json) => ModuleStat(
				coin: json['coin'] == null
						? null
						: Coin.fromJson(json['coin'] as Map<String, dynamic>),
				comment: json['comment'] == null
						? null
						: Comment.fromJson(json['comment'] as Map<String, dynamic>),
				favorite: json['favorite'] == null
						? null
						: Favorite.fromJson(json['favorite'] as Map<String, dynamic>),
				forward: json['forward'] == null
						? null
						: Forward.fromJson(json['forward'] as Map<String, dynamic>),
				like: json['like'] == null
						? null
						: Like.fromJson(json['like'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'coin': coin?.toJson(),
				'comment': comment?.toJson(),
				'favorite': favorite?.toJson(),
				'forward': forward?.toJson(),
				'like': like?.toJson(),
			};
}
