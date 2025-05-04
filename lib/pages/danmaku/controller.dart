import 'package:PiliPlus/grpc/dm/v1/dm.pb.dart';
import 'package:PiliPlus/http/danmaku.dart';
import 'package:PiliPlus/plugin/pl_player/controller.dart';

class PlDanmakuController {
  PlDanmakuController(
    this.cid,
    this.plPlayerController,
  );
  final int cid;
  final PlPlayerController plPlayerController;

  Map<int, List<DanmakuElem>> dmSegMap = {};
  // 已请求的段落标记
  Map requestedSeg = {};

  static int segmentLength = 60 * 6 * 1000;

  void dispose() {
    dmSegMap.clear();
    requestedSeg.clear();
  }

  int calcSegment(int progress) {
    return progress ~/ segmentLength;
  }

  Future<void> queryDanmaku(int segmentIndex) async {
    if (requestedSeg[segmentIndex] == true) {
      return;
    }
    requestedSeg[segmentIndex] = true;
    final Map result = await DanmakuHttp.queryDanmaku(
      cid: cid,
      segmentIndex: segmentIndex + 1,
      mergeDanmaku: plPlayerController.mergeDanmaku,
    );
    if (result['status']) {
      if (result['data'].elems.isNotEmpty) {
        for (DanmakuElem element in result['data'].elems) {
          if (element.mode == 7 && !plPlayerController.showSpecialDanmaku) {
            continue;
          }
          int pos = element.progress ~/ 100; //每0.1秒存储一次
          if (dmSegMap[pos] == null) {
            dmSegMap[pos] = [];
          }
          dmSegMap[pos]!.add(element);
        }
      }
    } else {
      requestedSeg[segmentIndex] = false;
    }
  }

  List<DanmakuElem>? getCurrentDanmaku(int progress) {
    int segmentIndex = calcSegment(progress);
    if (requestedSeg[segmentIndex] != true) {
      queryDanmaku(segmentIndex);
      return null;
    }
    if (plPlayerController.danmakuWeight == 0 &&
        plPlayerController.filters.count == 0) {
      return dmSegMap[progress ~/ 100];
    } else {
      return dmSegMap[progress ~/ 100]
        ?..retainWhere((element) =>
            element.weight >= plPlayerController.danmakuWeight &&
            plPlayerController.filters.retain(element));
    }
  }
}
