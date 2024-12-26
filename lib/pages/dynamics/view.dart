import 'dart:async';
import 'dart:io';

import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/http/msg.dart';
import 'package:PiliPalaX/models/common/dynamics_type.dart';
import 'package:PiliPalaX/models/common/up_panel_position.dart';
import 'package:PiliPalaX/pages/dynamics/tab/controller.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:nil/nil.dart';

import 'controller.dart';
import 'widgets/up_panel.dart';

enum ReplyOption { allow, close, choose }

extension ReplyOptionExtension on ReplyOption {
  String get title => ['允许评论', '关闭评论', '精选评论'][index];
}

class DynamicsPage extends StatefulWidget {
  const DynamicsPage({super.key});

  @override
  State<DynamicsPage> createState() => _DynamicsPageState();
}

class _DynamicsPageState extends State<DynamicsPage>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  final DynamicsController _dynamicsController = Get.put(DynamicsController());
  late Future _futureBuilderFutureUp;
  late UpPanelPosition upPanelPosition;
  StreamSubscription? _listener;

  @override
  bool get wantKeepAlive => true;

  Widget _createDynamicBtn([bool isRight = true]) => Center(
        child: Container(
          width: 34,
          height: 34,
          margin:
              EdgeInsets.only(left: !isRight ? 16 : 0, right: isRight ? 16 : 0),
          child: IconButton(
            tooltip: '发布动态',
            style: ButtonStyle(
              padding: WidgetStateProperty.all(EdgeInsets.zero),
              backgroundColor: WidgetStateProperty.resolveWith((states) {
                return Theme.of(context).colorScheme.secondaryContainer;
              }),
            ),
            onPressed: () {
              if (GStorage.isLogin) {
                showModalBottomSheet(
                  context: context,
                  useSafeArea: true,
                  isScrollControlled: true,
                  builder: (context) => const CreatePanel(),
                );
              }
            },
            icon: Icon(
              Icons.add,
              size: 18,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
        ),
      );

  @override
  void initState() {
    super.initState();
    _futureBuilderFutureUp = _dynamicsController.queryFollowUp();
    // _dynamicsController.tabController =
    //     TabController(vsync: this, length: DynamicsType.values.length);
    // ..addListener(() {
    //   if (!_dynamicsController.tabController.indexIsChanging) {
    //     // if (!mounted) return;
    //     // debugPrint('indexChanging: ${_dynamicsController.tabController.index}');
    //     _dynamicsController
    //         .onSelectType(_dynamicsController.tabController.index);
    //   }
    // });
    _listener = _dynamicsController.userLogin.listen((status) {
      if (mounted) {
        setState(() {
          _futureBuilderFutureUp = _dynamicsController.queryFollowUp();
        });
      }
    });
    upPanelPosition = UpPanelPosition.values[GStorage.setting.get(
        SettingBoxKey.upPanelPosition,
        defaultValue: UpPanelPosition.leftFixed.index)];
    debugPrint('upPanelPosition: $upPanelPosition');
    if (GStorage.setting
        .get(SettingBoxKey.dynamicsShowAllFollowedUp, defaultValue: false)) {
      _dynamicsController.scrollController.addListener(() {
        if (_dynamicsController.scrollController.position.pixels >=
            _dynamicsController.scrollController.position.maxScrollExtent -
                300) {
          EasyThrottle.throttle('following', const Duration(seconds: 1), () {
            _dynamicsController.queryFollowing2();
          });
        }
      });
    }
  }

  @override
  void dispose() {
    _listener?.cancel();
    _dynamicsController.tabController.removeListener(() {});
    _dynamicsController.scrollController.removeListener(() {});
    super.dispose();
  }

  Widget upPanelPart() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          //抽屉模式增加底色
          color: upPanelPosition.index > 1
              ? Theme.of(context).colorScheme.surface
              : Colors.transparent,
          width: 56,
          child: FutureBuilder(
            future: _futureBuilderFutureUp,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data == null) {
                  return nil;
                }
                // TODO: refactor
                if (snapshot.data is! Map) {
                  return HttpError(
                    isSliver: false,
                    callback: () => setState(() {
                      _futureBuilderFutureUp =
                          _dynamicsController.queryFollowUp();
                    }),
                  );
                }
                Map data = snapshot.data;
                if (data['status']) {
                  return Obx(() => UpPanel(_dynamicsController.upData.value,
                      _dynamicsController.scrollController));
                } else {
                  return Center(
                    child: IconButton(
                      icon: Icon(Icons.refresh),
                      onPressed: () {
                        setState(() {
                          _futureBuilderFutureUp =
                              _dynamicsController.queryFollowUp();
                        });
                      },
                    ),
                  );
                }
              } else {
                return nil;
              }
            },
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: upPanelPosition == UpPanelPosition.rightDrawer
              ? _createDynamicBtn(false)
              : null,
          leadingWidth: 50,
          toolbarHeight: 50,
          title: SizedBox(
            height: 50,
            child: TabBar(
              controller: _dynamicsController.tabController,
              isScrollable: true,
              dividerColor: Colors.transparent,
              dividerHeight: 0,
              tabAlignment: TabAlignment.center,
              indicatorColor: Theme.of(context).colorScheme.primary,
              labelColor: Theme.of(context).colorScheme.primary,
              unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
              labelStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
              ),
              tabs:
                  DynamicsType.values.map((e) => Tab(text: e.labels)).toList(),
              onTap: (index) {
                if (!_dynamicsController.tabController.indexIsChanging) {
                  feedBack();
                  Get.find<DynamicsTabController>(tag: tabsConfig[index]['tag'])
                      .animateToTop();
                }
              },
            ),
          ),
          actions: upPanelPosition == UpPanelPosition.rightDrawer
              ? null
              : [_createDynamicBtn()],
        ),
        drawer: upPanelPosition == UpPanelPosition.leftDrawer
            ? SafeArea(child: upPanelPart())
            : null,
        drawerEnableOpenDragGesture: true,
        endDrawer: upPanelPosition == UpPanelPosition.rightDrawer
            ? SafeArea(child: upPanelPart())
            : null,
        endDrawerEnableOpenDragGesture: true,
        body: Row(children: [
          if (upPanelPosition == UpPanelPosition.leftFixed) upPanelPart(),
          Expanded(
              child: TabBarView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: _dynamicsController.tabController,
            children: _dynamicsController.tabsPageList,
          )),
          if (upPanelPosition == UpPanelPosition.rightFixed) upPanelPart(),
        ]));
  }
}

class CreatePanel extends StatefulWidget {
  const CreatePanel({super.key});

  @override
  State<CreatePanel> createState() => _CreatePanelState();
}

class _CreatePanelState extends State<CreatePanel> {
  final _ctr = TextEditingController();
  bool _isEnable = false;
  final _isEnableStream = StreamController<bool>();
  late final _imagePicker = ImagePicker();
  late final _pathList = <String>[];
  late final _pathStream = StreamController<List<String>>();

  DateTime? _publishTime;
  ReplyOption _replyOption = ReplyOption.allow;

  late final int _limit = 18;

  @override
  void dispose() {
    _isEnableStream.close();
    _pathStream.close();
    _ctr.dispose();
    super.dispose();
  }

  Future _onCreate() async {
    // if (_pathList.isEmpty) {
    //   dynamic result = await MsgHttp.createTextDynamic(_ctr.text);
    //   if (result['status']) {
    //     Get.back();
    //     SmartDialog.showToast('发布成功');
    //   } else {
    //     SmartDialog.showToast(result['msg']);
    //   }
    // } else {
    List? pics;
    if (_pathList.isNotEmpty) {
      pics = [];
      for (int i = 0; i < _pathList.length; i++) {
        SmartDialog.showLoading(msg: '正在上传图片: ${i + 1}/${_pathList.length}');
        dynamic result = await MsgHttp.uploadBfs(
          path: _pathList[i],
          category: 'daily',
          biz: 'new_dyn',
        );
        if (result['status']) {
          int imageSize = await File(_pathList[i]).length();
          pics.add({
            'img_width': result['data']['image_width'],
            'img_height': result['data']['image_height'],
            'img_size': imageSize / 1024,
            'img_src': result['data']['image_url'],
          });
        } else {
          SmartDialog.dismiss();
          SmartDialog.showToast(result['msg']);
          return;
        }
        if (i == _pathList.length - 1) {
          SmartDialog.dismiss();
        }
      }
    }
    dynamic result = await MsgHttp.createDynamic(
      mid: GStorage.userInfo.get('userInfoCache')?.mid,
      rawText: _ctr.text,
      pics: pics,
      publishTime: _publishTime != null
          ? _publishTime!.millisecondsSinceEpoch ~/ 1000
          : null,
      replyOption: _replyOption,
    );
    if (result['status']) {
      Get.back();
      SmartDialog.showToast('发布成功');
    } else {
      SmartDialog.showToast(result['msg']);
    }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Row(
          children: [
            const SizedBox(width: 16),
            SizedBox(
              width: 34,
              height: 34,
              child: IconButton(
                tooltip: '返回',
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                  backgroundColor: WidgetStateProperty.resolveWith(
                    (states) {
                      return Theme.of(context).colorScheme.secondaryContainer;
                    },
                  ),
                ),
                onPressed: Get.back,
                icon: Icon(
                  Icons.arrow_back_outlined,
                  size: 18,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
            ),
            const Spacer(),
            const Text(
              '发布动态',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            StreamBuilder(
              initialData: false,
              stream: _isEnableStream.stream,
              builder: (context, snapshot) => FilledButton.tonal(
                onPressed: snapshot.data == true ? _onCreate : null,
                style: FilledButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  visualDensity: const VisualDensity(
                    horizontal: -2,
                    vertical: -2,
                  ),
                ),
                child: const Text('发布'),
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            controller: _ctr,
            minLines: 4,
            maxLines: 8,
            autofocus: true,
            onChanged: (value) {
              bool isEmpty =
                  value.replaceAll('\n', '').isEmpty && _pathList.isEmpty;
              if (!isEmpty && !_isEnable) {
                _isEnable = true;
                _isEnableStream.add(true);
              } else if (isEmpty && _isEnable) {
                _isEnable = false;
                _isEnableStream.add(false);
              }
            },
            decoration: const InputDecoration(
              hintText: '说点什么吧',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                gapPadding: 0,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _publishTime == null
                  ? FilledButton.tonal(
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        visualDensity: const VisualDensity(
                          horizontal: -2,
                          vertical: -2,
                        ),
                      ),
                      onPressed: () {
                        DateTime nowDate = DateTime.now();
                        showDatePicker(
                          context: context,
                          initialDate: nowDate,
                          firstDate: nowDate,
                          lastDate: DateTime(
                            nowDate.year,
                            nowDate.month,
                            nowDate.day + 7,
                          ),
                        ).then(
                          (selectedDate) {
                            if (selectedDate != null && context.mounted) {
                              if (selectedDate.day == nowDate.day) {
                                SmartDialog.showToast('至少选择10分钟之后');
                              }
                              TimeOfDay nowTime = TimeOfDay.now();
                              showTimePicker(
                                context: context,
                                initialTime: nowTime.replacing(
                                  hour: nowTime.minute + 10 >= 60
                                      ? (nowTime.hour + 1) % 24
                                      : nowTime.hour,
                                  minute: (nowTime.minute + 10) % 60,
                                ),
                              ).then((selectedTime) {
                                if (selectedTime != null) {
                                  if (selectedDate.day == nowDate.day) {
                                    if (selectedTime.hour < nowTime.hour) {
                                      SmartDialog.showToast('时间设置错误');
                                      return;
                                    } else if (selectedTime.hour ==
                                        nowTime.hour) {
                                      if (selectedTime.minute <
                                          nowTime.minute + 10) {
                                        SmartDialog.showToast('时间设置错误');
                                        return;
                                      }
                                    }
                                  }
                                  setState(() {
                                    _publishTime = DateTime(
                                      selectedDate.year,
                                      selectedDate.month,
                                      selectedDate.day,
                                      selectedTime.hour,
                                      selectedTime.minute,
                                    );
                                  });
                                }
                              });
                            }
                          },
                        );
                      },
                      child: const Text('定时发布'),
                    )
                  : OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        visualDensity: const VisualDensity(
                          horizontal: -2,
                          vertical: -2,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _publishTime = null;
                        });
                      },
                      label: Text(
                          DateFormat('yyyy-MM-dd HH:mm').format(_publishTime!)),
                      icon: Icon(Icons.clear, size: 20),
                      iconAlignment: IconAlignment.end,
                    ),
              PopupMenuButton(
                initialValue: _replyOption,
                onSelected: (item) {
                  setState(() {
                    _replyOption = item;
                  });
                },
                itemBuilder: (context) => ReplyOption.values
                    .map((item) => PopupMenuItem<ReplyOption>(
                          value: item,
                          child: Text(item.title),
                        ))
                    .toList(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _replyOption.title,
                      style: TextStyle(
                        height: 1,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      strutStyle: StrutStyle(leading: 0, height: 1),
                    ),
                    Icon(
                      size: 20,
                      Icons.keyboard_arrow_right,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        StreamBuilder(
          initialData: const [],
          stream: _pathStream.stream,
          builder: (context, snapshot) => SizedBox(
            height: 75,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount:
                  _pathList.length == _limit ? _limit : _pathList.length + 1,
              itemBuilder: (context, index) {
                if (_pathList.length != _limit && index == _pathList.length) {
                  return Material(
                    borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        EasyThrottle.throttle(
                            'imagePicker', const Duration(milliseconds: 500),
                            () async {
                          try {
                            List<XFile> pickedFiles =
                                await _imagePicker.pickMultiImage(
                              limit: _limit,
                              imageQuality: 100,
                            );
                            if (pickedFiles.isNotEmpty) {
                              for (int i = 0; i < pickedFiles.length; i++) {
                                if (_pathList.length == _limit) {
                                  SmartDialog.showToast('最多选择$_limit张图片');
                                  if (i != 0) {
                                    _pathStream.add(_pathList);
                                  }
                                  break;
                                } else {
                                  _pathList.add(pickedFiles[i].path);
                                  if (i == pickedFiles.length - 1) {
                                    _pathStream.add(_pathList);
                                  }
                                }
                              }
                              if (_pathList.isNotEmpty && !_isEnable) {
                                _isEnable = true;
                                _isEnableStream.add(true);
                              }
                            }
                          } catch (e) {
                            SmartDialog.showToast(e.toString());
                          }
                        });
                      },
                      child: Ink(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                        ),
                        child: Center(child: Icon(Icons.add)),
                      ),
                    ),
                  );
                } else {
                  return GestureDetector(
                    onTap: () {
                      _pathList.removeAt(index);
                      _pathStream.add(_pathList);
                      if (_pathList.isEmpty &&
                          _ctr.text.replaceAll('\n', '').isEmpty) {
                        _isEnable = false;
                        _isEnableStream.add(false);
                      }
                    },
                    child: Image(
                      height: 75,
                      fit: BoxFit.fitHeight,
                      filterQuality: FilterQuality.low,
                      image: FileImage(File(_pathList[index])),
                    ),
                  );
                }
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
            ),
          ),
        ),
      ],
    );
  }
}
