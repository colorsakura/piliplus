import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/utils/global_data.dart';
import 'package:flutter/material.dart';

Widget get loadingWidget => Center(child: CircularProgressIndicator());

Widget errorWidget({errMsg, callback}) => HttpError(
      isSliver: false,
      errMsg: errMsg,
      callback: callback,
    );

Widget scrollErrorWidget({errMsg, callback}) => CustomScrollView(
      slivers: [
        HttpError(
          errMsg: errMsg,
          callback: callback,
        )
      ],
    );

Widget grpcReplyErrorWidget(context, onReload) => FilledButton.tonal(
      onPressed: () {
        GlobalData().grpcReply = false;
        onReload();
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          return Theme.of(context).colorScheme.primary.withAlpha(20);
        }),
      ),
      child: Text(
        '暂时关闭gRPC加载评论',
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
    );
