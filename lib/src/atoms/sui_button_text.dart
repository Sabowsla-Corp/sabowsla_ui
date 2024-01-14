import 'package:flutter/material.dart';

class SUIButtonText extends StatefulWidget {
  final Function()? onTap;
  final String text;
  const SUIButtonText(this.text, {super.key, this.onTap});

  @override
  State<SUIButtonText> createState() => _SUIButtonTextState();
}

class _SUIButtonTextState extends State<SUIButtonText> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => setState(() {
        hover = value;
      }),
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        child: Text(
          widget.text,
          style: TextStyle(
            color: hover ? Colors.white : Colors.white54,
          ),
        ),
      ),
    );
  }
}
