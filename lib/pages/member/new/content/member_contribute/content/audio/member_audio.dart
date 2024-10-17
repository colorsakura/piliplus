import 'package:flutter/material.dart';

class MemberAudio extends StatefulWidget {
  const MemberAudio({
    super.key,
    required this.heroTag,
  });

  final String? heroTag;

  @override
  State<MemberAudio> createState() => _MemberAudioState();
}

class _MemberAudioState extends State<MemberAudio>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Text('Audio'),
    );
  }
}
