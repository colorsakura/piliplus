import 'package:PiliPlus/models/article_info/share_channel.dart';
import 'package:PiliPlus/models/article_info/stats.dart';

class ArticleInfoData {
  int? like;
  bool? attention;
  bool? favorite;
  int? coin;
  Stats? stats;
  String? title;
  String? bannerUrl;
  int? mid;
  String? authorName;
  bool? isAuthor;
  List? imageUrls;
  List? originImageUrls;
  bool? shareable;
  bool? showLaterWatch;
  bool? showSmallWindow;
  bool? inList;
  int? pre;
  int? next;
  List<ShareChannel>? shareChannels;
  int? type;
  String? videoUrl;
  String? location;
  bool? disableShare;

  ArticleInfoData({
    this.like,
    this.attention,
    this.favorite,
    this.coin,
    this.stats,
    this.title,
    this.bannerUrl,
    this.mid,
    this.authorName,
    this.isAuthor,
    this.imageUrls,
    this.originImageUrls,
    this.shareable,
    this.showLaterWatch,
    this.showSmallWindow,
    this.inList,
    this.pre,
    this.next,
    this.shareChannels,
    this.type,
    this.videoUrl,
    this.location,
    this.disableShare,
  });

  factory ArticleInfoData.fromJson(Map<String, dynamic> json) =>
      ArticleInfoData(
        like: json['like'] as int?,
        attention: json['attention'] as bool?,
        favorite: json['favorite'] as bool?,
        coin: json['coin'] as int?,
        stats: json['stats'] == null
            ? null
            : Stats.fromJson(json['stats'] as Map<String, dynamic>),
        title: json['title'] as String?,
        bannerUrl: json['banner_url'] as String?,
        mid: json['mid'] as int?,
        authorName: json['author_name'] as String?,
        isAuthor: json['is_author'] as bool?,
        imageUrls: json['image_urls'],
        originImageUrls: json['origin_image_urls'],
        shareable: json['shareable'] as bool?,
        showLaterWatch: json['show_later_watch'] as bool?,
        showSmallWindow: json['show_small_window'] as bool?,
        inList: json['in_list'] as bool?,
        pre: json['pre'] as int?,
        next: json['next'] as int?,
        shareChannels: (json['share_channels'] as List<dynamic>?)
            ?.map((e) => ShareChannel.fromJson(e as Map<String, dynamic>))
            .toList(),
        type: json['type'] as int?,
        videoUrl: json['video_url'] as String?,
        location: json['location'] as String?,
        disableShare: json['disable_share'] as bool?,
      );
}
