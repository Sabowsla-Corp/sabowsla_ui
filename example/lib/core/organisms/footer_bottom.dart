import 'package:example/core/navigation/navigation_service.dart';
import 'package:example/core/style/paddings.dart';
import 'package:flutter/material.dart';

class FooterBottom extends StatelessWidget {
  const FooterBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddings.h100,
      height: 120,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black54,
          ),
        ),
      ),
      child: Row(
        children: [
          const Text(
            "© Copyright 2023 Sabowsla",
            style: TextStyle(
              color: Colors.white30,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              navigationService.toTermsAndConditions();
            },
            child: const Text(
              "Terms and Conditions",
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(width: 50),
          const Text(
            "Privacy Policy",
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 50),
          const Text(
            "License",
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
