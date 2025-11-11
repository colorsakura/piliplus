abstract class Em {
  static final _exp = RegExp('<[^>]*>([^<]*)</[^>]*>');

  static String regCate(String origin) {
    Iterable<Match> matches = _exp.allMatches(origin);
    return matches.lastOrNull?.group(1) ?? origin;
  }

  static List<({bool isEm, String text})> regTitle(String origin) {
    List<({bool isEm, String text})> res = [];
    origin.splitMapJoin(
      _exp,
      onMatch: (Match match) {
        String matchStr = match[0]!;
        res.add((isEm: true, text: regCate(matchStr)));
        return '';
      },
      onNonMatch: (String str) {
        if (str != '') {
          str = str
              .replaceAll('&lt;', '<')
              .replaceAll('&gt;', '>')
              .replaceAll('&quot;', '"')
              .replaceAll('&apos;', "'")
              .replaceAll('&nbsp;', " ")
              .replaceAll('&amp;', "&");
          res.add((isEm: false, text: str));
        }
        return '';
      },
    );
    return res;
  }
}
