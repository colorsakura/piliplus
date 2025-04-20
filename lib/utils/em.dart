import 'package:html/parser.dart' show parse;

class Em {
  static final _exp = RegExp('<[^>]*>([^<]*)</[^>]*>');

  static String regCate(String origin) {
    Iterable<Match> matches = _exp.allMatches(origin);
    return matches.lastOrNull?.group(1) ?? origin;
  }

  static List<Map<String, String>> regTitle(String origin) {
    List<Map<String, String>> res = [];
    origin.splitMapJoin(
      _exp,
      onMatch: (Match match) {
        String matchStr = match[0]!;
        res.add({'type': 'em', 'text': regCate(matchStr)});
        return matchStr;
      },
      onNonMatch: (String str) {
        if (str != '') {
          str = decodeHtmlEntities(str);
          res.add({'type': 'text', 'text': str});
        }
        return str;
      },
    );
    return res;
  }

  static String decodeHtmlEntities(String title) {
    return parse(title).body?.text ?? title;
    // return title
    //     .replaceAll('&lt;', '<')
    //     .replaceAll('&gt;', '>')
    //     .replaceAll('&#34;', '"')
    //     .replaceAll('&#39;', "'")
    //     .replaceAll('&quot;', '"')
    //     .replaceAll('&apos;', "'")
    //     .replaceAll('&nbsp;', " ")
    //     .replaceAll('&amp;', "&")
    //     .replaceAll('&#x27;', "'");
  }
}
