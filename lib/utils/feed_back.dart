import 'package:flutter/services.dart';
import 'package:PiliPlus/utils/storage.dart';

bool enableFeedback = GStorage.feedBackEnable;
void feedBack() {
  if (enableFeedback) {
    HapticFeedback.lightImpact();
  }
}
