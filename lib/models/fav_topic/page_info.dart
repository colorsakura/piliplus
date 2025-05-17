class PageInfo {
  int? curPageNum;
  int? total;

  PageInfo({this.curPageNum, this.total});

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        curPageNum: json['cur_page_num'] as int?,
        total: json['total'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'cur_page_num': curPageNum,
        'total': total,
      };
}
