import 'package:PiliPlus/pages/setting/widgets/model.dart';
import 'package:flutter/material.dart';

class RecommendSetting extends StatelessWidget {
  const RecommendSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('推荐流设置')),
      body: ListView(
        children: [
          ...recommendSettings.map((item) => item.widget),
          ListTile(
            dense: true,
            subtitle: Text(
              '¹ 若默认web端推荐不太符合预期，可尝试切换至app端。\n'
              '¹ 选择“游客模式(notLogin)”，将以空的key请求app推荐接口，但播放页仍会携带用户信息，保证账号能正常记录进度、点赞投币等。\n\n'
              '² 由于接口未提供关注信息，无法豁免相关视频中的已关注Up。\n\n'
              '* 其它（如热门视频、手动搜索、链接跳转等）均不受过滤器影响。\n'
              '* 设定较严苛的条件可导致推荐项数锐减或多次请求，请酌情选择。\n'
              '* 后续可能会增加更多过滤条件，敬请期待。',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color:
                      Theme.of(context).colorScheme.outline.withOpacity(0.7)),
            ),
          )
        ],
      ),
    );
  }
}
