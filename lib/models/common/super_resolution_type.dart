enum SuperResolutionType { disable, efficiency, quality }

extension SuperResolutionTypeExt on SuperResolutionType {
  String get title => const ['禁用', '效率', '画质'][index];
}
