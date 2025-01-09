import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../http/init.dart';
import '../http/search.dart';
import 'id_utils.dart';
import 'utils.dart';

class UrlUtils {
  // 302重定向路由截取
  static Future<String?> parseRedirectUrl(String url) async {
    try {
      final response = await Request().get(
        url,
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status == 200 || status == 301 || status == 302;
          },
        ),
      );
      if (response.statusCode == 302 || response.statusCode == 301) {
        return response.headers['location']?.first;
      } else {
        return null;
      }
    } catch (err) {
      return null;
    }
  }

  // 匹配url路由跳转
  static matchUrlPush(
    String pathSegment,
    String title,
    String redirectUrl,
  ) async {
    final Map matchRes = IdUtils.matchAvorBv(input: pathSegment);
    if (matchRes.containsKey('BV')) {
      final String bv = matchRes['BV'];
      final int cid = await SearchHttp.ab2c(bvid: bv);
      await Get.toNamed(
        '/video?bvid=$bv&cid=$cid',
        arguments: <String, String?>{
          'pic': '',
          'heroTag': Utils.makeHeroTag(bv),
        },
        preventDuplicates: false,
      );
    } else {
      await Get.toNamed(
        '/webview',
        parameters: {
          'url': redirectUrl,
          'type': 'url',
          'pageTitle': title,
        },
      );
    }
  }
}
