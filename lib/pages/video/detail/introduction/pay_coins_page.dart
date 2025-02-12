import 'dart:async';
import 'dart:math';

import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PayCoinsPage extends StatefulWidget {
  const PayCoinsPage({
    super.key,
    required this.callback,
    this.copyright = 1,
  });

  final Function callback;
  final int copyright;

  @override
  State<PayCoinsPage> createState() => _PayCoinsPageState();
}

class _PayCoinsPageState extends State<PayCoinsPage>
    with TickerProviderStateMixin {
  bool _isPaying = false;
  late final _controller = PageController(viewportFraction: 0.30);
  late final RxBool _coinWithLike = GStorage.coinWithLike.obs;
  final _key = GlobalKey();

  int get _index => _controller.hasClients ? _controller.page?.round() ?? 0 : 0;

  late AnimationController _slide22Controller;
  late AnimationController _scale22Controller;
  late AnimationController _coinSlideController;
  late AnimationController _coinFadeController;
  late AnimationController _boxAnimController;

  final List _images = [
    'assets/images/paycoins/ic_thunder_1.png',
    'assets/images/paycoins/ic_thunder_2.png',
    'assets/images/paycoins/ic_thunder_3.png',
  ];
  late int _imageIndex = -1;
  Timer? _timer;
  bool get _showThunder => _imageIndex != -1 && _imageIndex != _images.length;

  @override
  void initState() {
    super.initState();
    _slide22Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
    );
    _scale22Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
    );
    _coinSlideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _coinFadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _boxAnimController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
    );
    _scale();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _slide22Controller.dispose();
    _scale22Controller.dispose();
    _coinSlideController.dispose();
    _coinFadeController.dispose();
    _boxAnimController.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _scale() {
    _scale22Controller.forward().whenComplete(() {
      _scale22Controller.reverse();
    });
  }

  void _onScroll(int index) {
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
    _scale();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isV = constraints.maxHeight > constraints.maxWidth;
      return isV
          ? _buildBody(isV)
          : Row(
              children: [
                const Spacer(),
                Expanded(child: _buildBody(isV)),
              ],
            );
    });
  }

  Widget _buildBody(isV) => Stack(
        key: _key,
        alignment: Alignment.center,
        children: [
          Visibility(
            visible: _showThunder,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Image.asset(_images[_showThunder ? _imageIndex : 0]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Visibility(
                        visible: !_isPaying && widget.copyright == 1,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child: GestureDetector(
                          onTap: _index == 0
                              ? null
                              : () {
                                  _onScroll(0);
                                },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Image.asset(
                              width: 16,
                              height: 28,
                              _index == 0
                                  ? 'assets/images/paycoins/ic_left_disable.png'
                                  : 'assets/images/paycoins/ic_left.png',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: PageView.builder(
                            key: PageStorageKey('PageView'),
                            itemCount: widget.copyright == 1 ? 2 : 1,
                            controller: _controller,
                            onPageChanged: (index) => setState(() {
                              _scale();
                            }),
                            itemBuilder: (context, index) {
                              return ListenableBuilder(
                                listenable: _controller,
                                builder: (context, child) {
                                  double factor = index == 0 ? 1 : 0;
                                  if (_controller
                                      .position.hasContentDimensions) {
                                    factor =
                                        1 - (_controller.page! - index).abs();
                                  }
                                  return Visibility(
                                    visible: !_isPaying || _index == index,
                                    child: Center(
                                      child: SizedBox(
                                        height: 70 + (factor * 30),
                                        width: 70 + (factor * 30),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SlideTransition(
                                              position:
                                                  _boxAnimController.drive(
                                                Tween(
                                                  begin: const Offset(0.0, 0.0),
                                                  end: const Offset(0.0, -0.2),
                                                ),
                                              ),
                                              child: Image.asset(
                                                'assets/images/paycoins/ic_pay_coins_box.png',
                                              ),
                                            ),
                                            SlideTransition(
                                              position:
                                                  _coinSlideController.drive(
                                                Tween(
                                                  begin: const Offset(0.0, 0.0),
                                                  end: const Offset(0.0, -2),
                                                ),
                                              ),
                                              child: FadeTransition(
                                                opacity: Tween<double>(
                                                        begin: 1, end: 0)
                                                    .animate(
                                                        _coinFadeController),
                                                child: Image.asset(
                                                  height: 35 + (factor * 15),
                                                  width: 35 + (factor * 15),
                                                  index == 0
                                                      ? 'assets/images/paycoins/ic_coins_one.png'
                                                      : 'assets/images/paycoins/ic_coins_two.png',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      Visibility(
                        visible: !_isPaying && widget.copyright == 1,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child: GestureDetector(
                          onTap: _index == 1
                              ? null
                              : () {
                                  _onScroll(1);
                                },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Image.asset(
                              width: 16,
                              height: 28,
                              _index == 1
                                  ? 'assets/images/paycoins/ic_right_disable.png'
                                  : 'assets/images/paycoins/ic_right.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: isV ? 25 : 10),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onPanUpdate: _handlePanUpdate,
                    child: SizedBox(
                      width: double.infinity,
                      height: 155,
                      child: Center(
                        child: GestureDetector(
                          onTap: _onPayCoin,
                          onPanUpdate: (e) => _handlePanUpdate(e, true),
                          child: ScaleTransition(
                            scale: _scale22Controller.drive(
                              Tween(begin: 1, end: 1.1),
                            ),
                            child: SlideTransition(
                              position: _slide22Controller.drive(
                                Tween(
                                  begin: const Offset(0.0, 0.0),
                                  end: const Offset(0.0, -0.2),
                                ),
                              ),
                              child: SizedBox(
                                width: 110,
                                height: 155,
                                child: Image.asset(
                                  _index == 0
                                      ? 'assets/images/paycoins/ic_22_mario.png'
                                      : 'assets/images/paycoins/ic_22_gun_sister.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _coinWithLike.value = _coinWithLike.value.not;
                          GStorage.setting.put(
                            SettingBoxKey.coinWithLike,
                            _coinWithLike.value,
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(width: 12),
                            Obx(
                              () => Icon(
                                _coinWithLike.value
                                    ? Icons.check_box_outlined
                                    : Icons.check_box_outline_blank,
                                size: 20,
                              ),
                            ),
                            const Text(
                              ' 同时点赞',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: Get.back,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset(
                              'assets/images/paycoins/ic_panel_close.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      height: (isV ? 50 : 10) +
                          MediaQuery.of(context).padding.bottom),
                ],
              ),
            ),
          ),
        ],
      );

  void _handlePanUpdate(DragUpdateDetails e, [bool needV = false]) {
    if (needV && e.delta.dy.abs() > max(2, e.delta.dx.abs())) {
      if (e.delta.dy < 0) {
        _onPayCoin();
      }
    } else if (widget.copyright == 1 &&
        e.delta.dx.abs() > max(2, e.delta.dy.abs())) {
      if (e.delta.dx > 0) {
        if (_index == 1) {
          _onScroll(0);
          setState(() {});
        }
      } else {
        if (_index == 0) {
          _onScroll(1);
          setState(() {});
        }
      }
    }
  }

  void _onPayCoin() {
    if (_isPaying) return;
    setState(() {
      _isPaying = true;
    });
    _slide22Controller.forward().whenComplete(() {
      _slide22Controller.reverse().whenComplete(() {
        if (_index == 1) {
          _timer ??= Timer.periodic(const Duration(milliseconds: 50 ~/ 3), (_) {
            if (_imageIndex != _images.length) {
              setState(() {
                _imageIndex = _imageIndex + 1;
              });
            } else {
              _timer?.cancel();
            }
          });
        }
        _boxAnimController.forward().whenComplete(() {
          _boxAnimController.reverse();
        });
        _coinSlideController.forward().whenComplete(() {
          _coinFadeController.forward().whenComplete(() {
            Get.back();
            widget.callback(_index + 1, _coinWithLike.value);
          });
        });
      });
    });
  }
}
