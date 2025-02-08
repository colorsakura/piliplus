// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:convert';

class IdUtils {
  static final XOR_CODE = BigInt.parse('23442827791579');
  static final MASK_CODE = BigInt.parse('2251799813685247');
  static final MAX_AID = BigInt.one << (BigInt.from(51)).toInt();
  static final BASE = BigInt.from(58);

  static const data =
      'FcwAPNKTMug3GV5Lj7EJnHpWsx4tb8haYeviqBz6rkCy12mUSDQX9RdoZf';

  /// av转bv
  static String av2bv(int aid) {
    List<String> bytes = [
      'B',
      'V',
      '1',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0'
    ];
    int bvIndex = bytes.length - 1;
    BigInt tmp = (MAX_AID | BigInt.from(aid)) ^ XOR_CODE;
    while (tmp > BigInt.zero) {
      bytes[bvIndex] = data[(tmp % BASE).toInt()];
      tmp = tmp ~/ BASE;
      bvIndex -= 1;
    }
    String tmpSwap = bytes[3];
    bytes[3] = bytes[9];
    bytes[9] = tmpSwap;

    tmpSwap = bytes[4];
    bytes[4] = bytes[7];
    bytes[7] = tmpSwap;

    return bytes.join();
  }

  /// bv转av
  static int bv2av(String bvid) {
    List<String> bvidArr = bvid.split('');
    final tmpValue = bvidArr[3];
    bvidArr[3] = bvidArr[9];
    bvidArr[9] = tmpValue;

    final tmpValue2 = bvidArr[4];
    bvidArr[4] = bvidArr[7];
    bvidArr[7] = tmpValue2;

    bvidArr.removeRange(0, 3);
    BigInt tmp = bvidArr.fold(BigInt.zero,
        (pre, bvidChar) => pre * BASE + BigInt.from(data.indexOf(bvidChar)));
    return ((tmp & MASK_CODE) ^ XOR_CODE).toInt();
  }

  // 匹配
  static Map<String, dynamic> matchAvorBv({String? input}) {
    final Map<String, dynamic> result = {};
    if (input == null || input.isEmpty) {
      return result;
    }
    final RegExp bvRegex = RegExp(r'bv([0-9A-Za-z]{10})', caseSensitive: false);
    String? bvid = bvRegex.firstMatch(input)?.group(1);

    late final RegExp avRegex = RegExp(r'av(\d+)', caseSensitive: false);
    late String? aid = avRegex.firstMatch(input)?.group(1);

    if (bvid != null) {
      result['BV'] = 'BV$bvid';
    } else if (aid != null) {
      result['AV'] = int.parse(aid);
    }
    return result;
  }

  // eid生成
  static String? genAuroraEid(int uid) {
    if (uid == 0) {
      return null;
    }
    String uidString = uid.toString();
    List<int> resultBytes = List.generate(
      uidString.length,
      (i) => uidString.codeUnitAt(i) ^ "ad1va46a7lza".codeUnitAt(i % 12),
    );
    String auroraEid = base64Url.encode(resultBytes);
    auroraEid = auroraEid.replaceAll(RegExp(r'=*$', multiLine: true), '');
    return auroraEid;
  }
}
