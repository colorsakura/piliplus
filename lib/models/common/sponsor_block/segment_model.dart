import 'package:PiliPlus/common/widgets/pair.dart';
import 'package:PiliPlus/models/common/sponsor_block/segment_type.dart';
import 'package:PiliPlus/models/common/sponsor_block/skip_type.dart';

class SegmentModel {
  SegmentModel({
    // ignore: non_constant_identifier_names
    required this.UUID,
    required this.segmentType,
    required this.segment,
    required this.skipType,
    this.hasSkipped,
  });
  // ignore: non_constant_identifier_names
  String UUID;
  SegmentType segmentType;
  Pair<int, int> segment;
  SkipType skipType;
  bool? hasSkipped;
}
