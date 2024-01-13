import 'package:flutter/material.dart';
import 'package:sabowsla_ui/sabowsla_ui.dart';

class SUIMenuBar extends StatelessWidget {
  const SUIMenuBar({
    required this.values,
    super.key,
    this.value,
    this.onChanged,
  });
  final dynamic value;
  final List<dynamic> values;
  final Function(dynamic newValue)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white10,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...values.map((e) {
            return CustomButton(
              margin: const EdgeInsets.all(5),
              onTap: () {
                onChanged?.call(e);
              },
              buttonColor: value == e ? Colors.white12 : Colors.black,
              buttonText: e.toString(),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 4,
              ),
            );
          }),
        ],
      ),
    );
  }

  static Widget withTitle({
    required String title,
    required List<dynamic> values,
    dynamic value,
    Function(dynamic newValue)? onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Text(title, style: const TextStyle(color: Colors.white30)),
        ),
        const SizedBox(height: 2),
        SUIMenuBar(
          values: values,
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
