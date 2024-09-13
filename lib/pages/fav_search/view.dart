import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/widgets/no_data.dart';
import 'package:PiliPalaX/pages/fav_detail/widget/fav_video_card.dart';

import 'controller.dart';

class FavSearchPage extends StatefulWidget {
  const FavSearchPage({super.key});

  @override
  State<FavSearchPage> createState() => _FavSearchPageState();
}

class _FavSearchPageState extends State<FavSearchPage> {
  final FavSearchController _favSearchCtr = Get.put(FavSearchController());
  late int searchType;

  @override
  void initState() {
    super.initState();
    searchType = int.parse(Get.parameters['searchType']!);
    _favSearchCtr.scrollController.addListener(
      () {
        if (_favSearchCtr.scrollController.position.pixels >=
            _favSearchCtr.scrollController.position.maxScrollExtent - 300) {
          EasyThrottle.throttle('fav', const Duration(seconds: 1), () {
            _favSearchCtr.onLoadMore();
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _favSearchCtr.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        actions: [
          IconButton(
              tooltip: '搜索',
              onPressed: _favSearchCtr.onRefresh,
              icon: const Icon(Icons.search_outlined, size: 22)),
          const SizedBox(width: 10)
        ],
        title: Obx(
          () => TextField(
            autofocus: true,
            focusNode: _favSearchCtr.searchFocusNode,
            controller: _favSearchCtr.controller.value,
            textInputAction: TextInputAction.search,
            onChanged: (value) => _favSearchCtr.onChange(value),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: _favSearchCtr.hintText,
              border: InputBorder.none,
              suffixIcon: IconButton(
                tooltip: '清空',
                icon: const Icon(Icons.clear, size: 22),
                onPressed: () => _favSearchCtr.onClear(),
              ),
            ),
            onSubmitted: (String value) => _favSearchCtr.onRefresh(),
          ),
        ),
      ),
      body: Obx(() => _buildBody(_favSearchCtr.loadingState.value)),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return loadingState is Success
        ? loadingState.response.isEmpty
            ? CustomScrollView(
                slivers: <Widget>[
                  HttpError(
                    errMsg: '没有数据',
                    fn: _favSearchCtr.onReload,
                  ),
                ],
              )
            : ListView.builder(
                controller: _favSearchCtr.scrollController,
                itemCount: loadingState.response.length + 1,
                itemBuilder: (context, index) {
                  if (index == loadingState.response.length) {
                    return Container(
                      height: MediaQuery.of(context).padding.bottom + 60,
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).padding.bottom,
                      ),
                    );
                  } else {
                    return FavVideoCardH(
                      videoItem: loadingState.response[index],
                      searchType: searchType,
                      callFn: () => searchType != 1
                          ? _favSearchCtr
                              .onCancelFav(loadingState.response[index].id!)
                          : {},
                    );
                  }
                },
              )
        : loadingState is Error
            ? CustomScrollView(
                slivers: <Widget>[
                  HttpError(
                    errMsg: loadingState.errMsg,
                    fn: _favSearchCtr.onReload,
                  ),
                ],
              )
            : const CustomScrollView(
                slivers: <Widget>[
                  NoData(),
                ],
              );
  }
}
