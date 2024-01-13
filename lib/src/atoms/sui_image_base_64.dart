import 'dart:convert';

import 'package:flutter/material.dart';

class SUIImageBase64 extends StatelessWidget {
  final String base64;
  final double? width;
  final double? height;
  final Widget? onError;
  const SUIImageBase64(
    this.base64, {
    super.key,
    this.width,
    this.height,
    this.onError,
  });

  @override
  Widget build(BuildContext context) {
    return Image.memory(
      base64Decode(base64),
      fit: BoxFit.cover,
      width: width,
      height: height,
      errorBuilder: (context, error, stackTrace) {
        return onError ?? const SizedBox();
      },
    );
  }
}
