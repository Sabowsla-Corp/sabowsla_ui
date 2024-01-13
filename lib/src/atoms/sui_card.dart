import 'package:flutter/material.dart';

class SUICard extends StatelessWidget {
  const SUICard({required this.child, super.key, this.margin});
  final Widget child;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.white24,
        ),
      ),
      child: child,
    );
  }
}
