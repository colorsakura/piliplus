import 'package:PiliPlus/common/widgets/button/icon_button.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/loading_widget/loading_widget.dart';
import 'package:PiliPlus/common/widgets/scroll_physics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/image_type.dart';
import 'package:PiliPlus/models_new/emote/emote.dart';
import 'package:PiliPlus/models_new/emote/package.dart';
import 'package:PiliPlus/pages/emote/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmotePanel extends StatefulWidget {
  final ValueChanged<Emote> onChoose;
  const EmotePanel({super.key, required this.onChoose});

  @override
  State<EmotePanel> createState() => _EmotePanelState();
}

class _EmotePanelState extends State<EmotePanel>
    with AutomaticKeepAliveClientMixin {
  final EmotePanelController _emotePanelController =
      Get.put(EmotePanelController());

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final ThemeData theme = Theme.of(context);
    return Obx(
        () => _buildBody(theme, _emotePanelController.loadingState.value));
  }

  Widget _buildBody(
      ThemeData theme, LoadingState<List<Package>?> loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success(:var response) => response?.isNotEmpty == true
          ? Column(
              children: [
                Expanded(
                  child: tabBarView(
                    controller: _emotePanelController.tabController,
                    children: response!.map(
                      (e) {
                        int size = e.emote!.first.meta!.size!;
                        int type = e.type!;
                        return GridView.builder(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 12),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent:
                                type == 4 ? 100 : (size == 1 ? 40 : 60),
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            mainAxisExtent: size == 1 ? 40 : 60,
                          ),
                          itemCount: e.emote!.length,
                          itemBuilder: (context, index) {
                            final item = e.emote![index];
                            return Material(
                              type: MaterialType.transparency,
                              child: InkWell(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                onTap: () => widget.onChoose(item),
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: type == 4
                                      ? Center(
                                          child: Text(
                                            item.text!,
                                            overflow: TextOverflow.clip,
                                            maxLines: 1,
                                          ),
                                        )
                                      : NetworkImgLayer(
                                          src: item.url!,
                                          width: size * 38,
                                          height: size * 38,
                                          semanticsLabel: item.text!,
                                          type: ImageType.emote,
                                          boxFit: BoxFit.contain,
                                        ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),
                ),
                Divider(
                  height: 1,
                  color: theme.dividerColor.withValues(alpha: 0.1),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: iconButton(
                        iconSize: 20,
                        iconColor: theme.colorScheme.onSurfaceVariant
                            .withValues(alpha: 0.8),
                        bgColor: Colors.transparent,
                        context: context,
                        onPressed: () => Get.toNamed(
                          '/webview',
                          parameters: {
                            'url':
                                'https://www.bilibili.com/h5/mall/emoji-package/home?navhide=1&native.theme=1&night=${Get.isDarkMode ? 1 : 0}',
                          },
                        ),
                        icon: Icons.settings,
                      ),
                    ),
                    Expanded(
                      child: Material(
                        type: MaterialType.transparency,
                        child: TabBar(
                          controller: _emotePanelController.tabController,
                          padding: const EdgeInsets.only(right: 60),
                          dividerColor: Colors.transparent,
                          dividerHeight: 0,
                          isScrollable: true,
                          tabs: response
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: NetworkImgLayer(
                                    width: 24,
                                    height: 24,
                                    type: ImageType.emote,
                                    src: e.url,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.paddingOf(context).bottom),
              ],
            )
          : _errorWidget(),
      Error(:var errMsg) => _errorWidget(errMsg),
    };
  }

  Widget _errorWidget([String? errMsg]) => Center(
        child: TextButton.icon(
          onPressed: _emotePanelController.onReload,
          icon: const Icon(Icons.refresh),
          label: Text(errMsg ?? '没有数据'),
        ),
      );
}
