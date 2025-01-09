import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiSelectDialog<T> extends StatefulWidget {
  final List<T> initValues;
  final String title;
  final List<dynamic> values;

  const MultiSelectDialog({
    super.key,
    required this.initValues,
    required this.values,
    required this.title,
  });

  @override
  State<MultiSelectDialog<T>> createState() => _MultiSelectDialogState<T>();
}

class _MultiSelectDialogState<T> extends State<MultiSelectDialog<T>> {
  late Set<T> _tempValues;

  @override
  void initState() {
    super.initState();
    _tempValues = widget.initValues.toSet();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      clipBehavior: Clip.hardEdge,
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 18),
      ),
      contentPadding: const EdgeInsets.only(top: 12),
      content: StatefulBuilder(builder: (context, StateSetter setState) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              widget.values.length,
              (index) {
                bool isChecked =
                    _tempValues.contains(widget.values[index]['value']);
                return CheckboxListTile(
                  dense: true,
                  value: isChecked,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    widget.values[index]['title'],
                    style: Theme.of(context).textTheme.titleMedium!,
                  ),
                  onChanged: (value) {
                    if (isChecked) {
                      _tempValues.remove(widget.values[index]['value']);
                    } else {
                      _tempValues.add(widget.values[index]['value']);
                    }
                    setState(() {});
                  },
                );
              },
            ),
          ),
        );
      }),
      actionsPadding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
      actions: [
        TextButton(
          onPressed: Get.back,
          child: Text(
            '取消',
            style: TextStyle(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ),
        TextButton(
          onPressed: () => Get.back(result: _tempValues.toList()),
          child: const Text('确定'),
        ),
      ],
    );
  }
}
