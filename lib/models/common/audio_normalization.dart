enum AudioNormalization { disable, dynaudnorm, loudnorm, custom }

extension AudioNormalizationExt on AudioNormalization {
  String get title =>
      const ['禁用', '预设 dynaudnorm', '预设 loudnorm', '自定义参数'][index];
  String get param => const [
        '',
        // ref https://github.com/KRTirtho/spotube/commit/da10ab2e291d4ba4d3082b9a6ae535639fb8f1b7
        'dynaudnorm=g=5:f=250:r=0.9:p=0.5',
        'loudnorm=I=-16:LRA=11:TP=-1.5',
        '',
      ][index];
}
