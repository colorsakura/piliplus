import 'quality_description.dart';
import 'watched_show.dart';

class CardLiveItem {
  int? id;
  int? roomid;
  int? uid;
  String? uname;
  String? face;
  String? cover;
  String? title;
  int? area;
  int? liveTime;
  String? areaName;
  int? areaV2Id;
  String? areaV2Name;
  String? areaV2ParentName;
  int? areaV2ParentId;
  String? liveTagName;
  int? online;
  String? playUrl;
  String? playUrlH265;
  List? acceptQuality;
  int? currentQuality;
  int? pkId;
  String? link;
  int? specialAttention;
  int? broadcastType;
  String? pendentRu;
  String? pendentRuColor;
  String? pendentRuPic;
  int? officialVerify;
  int? currentQn;
  List<QualityDescription>? qualityDescription;
  String? playUrlCard;
  int? flag;
  List<dynamic>? pendentList;
  int? p2pType;
  String? sessionId;
  int? groupId;
  WatchedShow? watchedShow;
  int? isNft;
  String? nftDmark;
  String? statusText;
  String? darkFace;
  String? trackid;

  CardLiveItem({
    this.id,
    this.roomid,
    this.uid,
    this.uname,
    this.face,
    this.cover,
    this.title,
    this.area,
    this.liveTime,
    this.areaName,
    this.areaV2Id,
    this.areaV2Name,
    this.areaV2ParentName,
    this.areaV2ParentId,
    this.liveTagName,
    this.online,
    this.playUrl,
    this.playUrlH265,
    this.acceptQuality,
    this.currentQuality,
    this.pkId,
    this.link,
    this.specialAttention,
    this.broadcastType,
    this.pendentRu,
    this.pendentRuColor,
    this.pendentRuPic,
    this.officialVerify,
    this.currentQn,
    this.qualityDescription,
    this.playUrlCard,
    this.flag,
    this.pendentList,
    this.p2pType,
    this.sessionId,
    this.groupId,
    this.watchedShow,
    this.isNft,
    this.nftDmark,
    this.statusText,
    this.darkFace,
    this.trackid,
  });

  factory CardLiveItem.fromJson(Map<String, dynamic> json) => CardLiveItem(
        id: json['id'] as int?,
        roomid: json['roomid'] as int?,
        uid: json['uid'] as int?,
        uname: json['uname'] as String?,
        face: json['face'] as String?,
        cover: json['cover'] as String?,
        title: json['title'] as String?,
        area: json['area'] as int?,
        liveTime: json['live_time'] as int?,
        areaName: json['area_name'] as String?,
        areaV2Id: json['area_v2_id'] as int?,
        areaV2Name: json['area_v2_name'] as String?,
        areaV2ParentName: json['area_v2_parent_name'] as String?,
        areaV2ParentId: json['area_v2_parent_id'] as int?,
        liveTagName: json['live_tag_name'] as String?,
        online: json['online'] as int?,
        playUrl: json['play_url'] as String?,
        playUrlH265: json['play_url_h265'] as String?,
        acceptQuality: json['accept_quality'],
        currentQuality: json['current_quality'] as int?,
        pkId: json['pk_id'] as int?,
        link: json['link'] as String?,
        specialAttention: json['special_attention'] as int?,
        broadcastType: json['broadcast_type'] as int?,
        pendentRu: json['pendent_ru'] as String?,
        pendentRuColor: json['pendent_ru_color'] as String?,
        pendentRuPic: json['pendent_ru_pic'] as String?,
        officialVerify: json['official_verify'] as int?,
        currentQn: json['current_qn'] as int?,
        qualityDescription: (json['quality_description'] as List<dynamic>?)
            ?.map((e) => QualityDescription.fromJson(e as Map<String, dynamic>))
            .toList(),
        playUrlCard: json['play_url_card'] as String?,
        flag: json['flag'] as int?,
        pendentList: json['pendent_list'] as List<dynamic>?,
        p2pType: json['p2p_type'] as int?,
        sessionId: json['session_id'] as String?,
        groupId: json['group_id'] as int?,
        watchedShow: json['watched_show'] == null
            ? null
            : WatchedShow.fromJson(
                json['watched_show'] as Map<String, dynamic>),
        isNft: json['is_nft'] as int?,
        nftDmark: json['nft_dmark'] as String?,
        statusText: json['status_text'] as String?,
        darkFace: json['dark_face'] as String?,
        trackid: json['trackid'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'roomid': roomid,
        'uid': uid,
        'uname': uname,
        'face': face,
        'cover': cover,
        'title': title,
        'area': area,
        'live_time': liveTime,
        'area_name': areaName,
        'area_v2_id': areaV2Id,
        'area_v2_name': areaV2Name,
        'area_v2_parent_name': areaV2ParentName,
        'area_v2_parent_id': areaV2ParentId,
        'live_tag_name': liveTagName,
        'online': online,
        'play_url': playUrl,
        'play_url_h265': playUrlH265,
        'accept_quality': acceptQuality,
        'current_quality': currentQuality,
        'pk_id': pkId,
        'link': link,
        'special_attention': specialAttention,
        'broadcast_type': broadcastType,
        'pendent_ru': pendentRu,
        'pendent_ru_color': pendentRuColor,
        'pendent_ru_pic': pendentRuPic,
        'official_verify': officialVerify,
        'current_qn': currentQn,
        'quality_description':
            qualityDescription?.map((e) => e.toJson()).toList(),
        'play_url_card': playUrlCard,
        'flag': flag,
        'pendent_list': pendentList,
        'p2p_type': p2pType,
        'session_id': sessionId,
        'group_id': groupId,
        'watched_show': watchedShow?.toJson(),
        'is_nft': isNft,
        'nft_dmark': nftDmark,
        'status_text': statusText,
        'dark_face': darkFace,
        'trackid': trackid,
      };
}
