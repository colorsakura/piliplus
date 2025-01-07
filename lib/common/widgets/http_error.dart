import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HttpError extends StatelessWidget {
  const HttpError({
    this.isSliver = true,
    this.errMsg,
    this.callback,
    this.btnText,
    this.extraWidget,
    super.key,
  });

  final bool isSliver;
  final String? errMsg;
  final Function()? callback;
  final String? btnText;
  final Widget? extraWidget;

  @override
  Widget build(BuildContext context) {
    return isSliver
        ? SliverToBoxAdapter(child: content(context))
        : SizedBox(
            width: double.infinity,
            child: content(context),
          );
  }

  Widget content(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          SvgPicture.asset(
            "assets/images/error.svg",
            height: 200,
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SelectableText(
              errMsg ?? '没有数据',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          if (extraWidget != null) ...[
            const SizedBox(height: 10),
            extraWidget!,
            const SizedBox(height: 5),
          ],
          if (callback != null) ...[
            if (extraWidget == null) const SizedBox(height: 20),
            FilledButton.tonal(
              onPressed: callback,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  return Theme.of(context).colorScheme.primary.withAlpha(20);
                }),
              ),
              child: Text(
                btnText ?? '点击重试',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
          SizedBox(height: 40 + MediaQuery.paddingOf(context).bottom),
        ],
      );
}
