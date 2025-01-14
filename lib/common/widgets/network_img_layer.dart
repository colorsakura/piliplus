import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/global_data.dart';
import '../constants.dart';

class NetworkImgLayer extends StatelessWidget {
  const NetworkImgLayer({
    super.key,
    this.src,
    required this.width,
    required this.height,
    this.type,
    this.fadeOutDuration,
    this.fadeInDuration,
    // 图片质量 默认1%
    this.quality,
    this.semanticsLabel,
    this.ignoreHeight,
    this.radius,
    this.imageBuilder,
    this.isLongPic,
    this.callback,
    this.getPlaceHolder,
  });

  final String? src;
  final double width;
  final double height;
  final String? type;
  final Duration? fadeOutDuration;
  final Duration? fadeInDuration;
  final int? quality;
  final String? semanticsLabel;
  final bool? ignoreHeight;
  final double? radius;
  final ImageWidgetBuilder? imageBuilder;
  final Function? isLongPic;
  final Function? callback;
  final Function? getPlaceHolder;

  @override
  Widget build(BuildContext context) {
    double radius = this.radius != null
        ? this.radius!
        : type == 'avatar'
            ? 50
            : type == 'emote'
                ? 0
                : StyleString.imgRadius.x;
    return src.isNullOrEmpty.not
        ? radius != 0
            ? ClipRRect(
                borderRadius: BorderRadius.circular(radius),
                child: _buildImage(context),
              )
            : _buildImage(context)
        : getPlaceHolder?.call() ?? placeholder(context);
  }

  Widget _buildImage(context) {
    late final int defaultImgQuality = GlobalData().imgQuality;
    bool thumbnail = true;
    int? memCacheWidth, memCacheHeight;
    if (callback?.call() == true || width <= height) {
      memCacheWidth = width.cacheSize(context);
    } else {
      memCacheHeight = height.cacheSize(context);
    }
    return CachedNetworkImage(
      imageUrl:
          '${src?.startsWith('//') == true ? 'https:$src' : src?.http2https}${type != 'emote' && thumbnail ? '@${quality ?? defaultImgQuality}q.webp' : ''}',
      width: width,
      height: ignoreHeight == null || ignoreHeight == false ? height : null,
      memCacheWidth: memCacheWidth,
      memCacheHeight: memCacheHeight,
      fit: BoxFit.cover,
      alignment:
          isLongPic?.call() == true ? Alignment.topCenter : Alignment.center,
      fadeOutDuration: fadeOutDuration ?? const Duration(milliseconds: 120),
      fadeInDuration: fadeInDuration ?? const Duration(milliseconds: 120),
      filterQuality: FilterQuality.low,
      // errorWidget: (BuildContext context, String url, Object error) =>
      //     placeholder(context),
      placeholder: (BuildContext context, String url) =>
          getPlaceHolder?.call() ?? placeholder(context),
      imageBuilder: imageBuilder,
      // errorListener: (value) {
      //   thumbnail = false;
      //   if (context.mounted) {
      //     (context as Element).markNeedsBuild();
      //   }
      // },
    );
  }

  Widget placeholder(BuildContext context) {
    int cacheWidth = width.cacheSize(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onInverseSurface.withOpacity(0.4),
        borderRadius: BorderRadius.circular(
          type == 'avatar'
              ? 50
              : type == 'emote'
                  ? 0
                  : StyleString.imgRadius.x,
        ),
      ),
      child: type == 'bg'
          ? const SizedBox()
          : Center(
              child: Image.asset(
                type == 'avatar'
                    ? 'assets/images/noface.jpeg'
                    : 'assets/images/loading.png',
                width: width,
                height: height,
                cacheWidth: cacheWidth == 0 ? null : cacheWidth,
                // cacheHeight: height.cacheSize(context),
              ),
            ),
    );
  }
}
