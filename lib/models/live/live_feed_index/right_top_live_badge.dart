import 'in_live.dart';

class RightTopLiveBadge {
	InLive? inLive;
	int? liveStatus;

	RightTopLiveBadge({this.inLive, this.liveStatus});

	factory RightTopLiveBadge.fromJson(Map<String, dynamic> json) {
		return RightTopLiveBadge(
			inLive: json['in_live'] == null
						? null
						: InLive.fromJson(json['in_live'] as Map<String, dynamic>),
			liveStatus: json['live_status'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'in_live': inLive?.toJson(),
				'live_status': liveStatus,
			};
}
