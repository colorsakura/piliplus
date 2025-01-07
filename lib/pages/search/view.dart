import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/search/suggest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'widgets/hot_keyword.dart';
import 'widgets/search_text.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with RouteAware {
  final SSearchController _searchController = Get.put(SSearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor.withOpacity(0.08),
            width: 1,
          ),
        ),
        actions: [
          IconButton(
            tooltip: '搜索',
            onPressed: () => _searchController.submit(),
            icon: const Icon(Icons.search, size: 22),
          ),
          const SizedBox(width: 10)
        ],
        title: TextField(
          autofocus: true,
          focusNode: _searchController.searchFocusNode,
          controller: _searchController.controller,
          textInputAction: TextInputAction.search,
          onChanged: _searchController.onChange,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: _searchController.hintText,
            border: InputBorder.none,
            suffixIcon: IconButton(
              tooltip: '清空',
              icon: const Icon(Icons.clear, size: 22),
              onPressed: _searchController.onClear,
            ),
          ),
          onSubmitted: (value) => _searchController.submit(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 搜索建议
            _searchSuggest(),
            if (_searchController.enableHotKey)
              // 热搜
              hotSearch(),
            // 搜索历史
            _history()
          ],
        ),
      ),
    );
  }

  Widget _searchSuggest() {
    return Obx(
      () => _searchController.searchSuggestList.isNotEmpty &&
              _searchController.searchSuggestList.first.term != null &&
              _searchController.controller.text != ''
          ? Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _searchController.searchSuggestList
                  .map(
                    (item) => InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      onTap: () => _searchController.onClickKeyword(item.term!),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 9,
                          bottom: 9,
                        ),
                        child: highlightText(context, item.textRich),
                      ),
                    ),
                  )
                  .toList(),
            )
          : const SizedBox.shrink(),
    );
  }

  Widget hotSearch() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 25, 4, 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 6, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '大家都在搜',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 34,
                  child: TextButton.icon(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(
                        const EdgeInsets.only(
                            left: 10, top: 6, bottom: 6, right: 10),
                      ),
                    ),
                    onPressed: _searchController.queryHotSearchList,
                    icon: Icon(
                      Icons.refresh_outlined,
                      size: 18,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    label: Text(
                      '刷新',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(() => _buildHotKey(_searchController.loadingState.value)),
        ],
      ),
    );
  }

  Widget _history() {
    return Obx(
      () => Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(
          10,
          _searchController.enableHotKey ? 0 : 6,
          6,
          MediaQuery.of(context).padding.bottom + 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_searchController.historyList.isNotEmpty)
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 0, 6, 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '搜索历史',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 34,
                      child: TextButton.icon(
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.only(
                              left: 10,
                              top: 6,
                              bottom: 6,
                              right: 10,
                            ),
                          ),
                        ),
                        onPressed: _searchController.onClearHistory,
                        icon: Icon(
                          Icons.clear_all_outlined,
                          size: 18,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        label: Text(
                          '清空',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            Obx(
              () => Wrap(
                spacing: 8,
                runSpacing: 8,
                direction: Axis.horizontal,
                textDirection: TextDirection.ltr,
                children: _searchController.historyList
                    .map(
                      (item) => SearchText(
                        text: item,
                        onTap: _searchController.onClickKeyword,
                        onLongPress: _searchController.onLongSelect,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHotKey(LoadingState loadingState) {
    return switch (loadingState) {
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? LayoutBuilder(
              builder: (context, constraints) => HotKeyword(
                width: constraints.maxWidth,
                hotSearchList: loadingState.response,
                onClick: _searchController.onClickKeyword,
              ),
            )
          : const SizedBox.shrink(),
      Error() => errorWidget(
          errMsg: loadingState.errMsg,
          callback: _searchController.queryHotSearchList,
        ),
      _ => const SizedBox.shrink(),
    };
  }
}
