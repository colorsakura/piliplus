sealed class DanmakuExtra {
  Object get mid;
  Object get id;

  const DanmakuExtra();
}

class VideoDanmaku extends DanmakuExtra {
  @override
  final int id;
  @override
  final String mid;

  bool isLike;

  VideoDanmaku({required this.id, required this.mid, this.isLike = false});
}

class LiveDanmaku extends DanmakuExtra {
  @override
  final Object id;
  @override
  final Object mid;
  final String uname;

  const LiveDanmaku({required this.id, required this.mid, required this.uname});
}
