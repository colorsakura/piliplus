import 'package:PiliPlus/utils/em.dart';
import 'package:flutter/material.dart';

class SearchSuggestModel {
  SearchSuggestModel({
    this.tag,
    this.term,
  });

  List<SearchSuggestItem>? tag;
  String? term;

  SearchSuggestModel.fromJson(Map<String, dynamic> json) {
    tag = (json['tag'] as List?)
        ?.map<SearchSuggestItem>(
            (e) => SearchSuggestItem.fromJson(e, json['term']))
        .toList();
  }
}

class SearchSuggestItem {
  String? value;
  String? term;
  int? spid;
  late String textRich;

  SearchSuggestItem.fromJson(Map<String, dynamic> json, String inputTerm) {
    value = json['value'];
    term = json['term'];
    textRich = json['name'];
  }
}

Widget highlightText(BuildContext context, String str) {
  return Text.rich(TextSpan(children: [
    for (var i in Em.regTitle(str))
      TextSpan(
        text: i['text'],
        style: i['type'] == 'em'
            ? TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              )
            : DefaultTextStyle.of(context).style,
      )
  ]));
}
