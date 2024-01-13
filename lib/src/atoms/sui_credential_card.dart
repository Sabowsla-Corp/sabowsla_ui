import 'package:flutter/material.dart';
import 'package:sabowsla_ui/sabowsla_ui.dart';

class SUICredentialCard extends StatelessWidget {
  const SUICredentialCard({
    super.key,
    this.imageBase64,
    this.name,
    this.email,
    this.onAdjust,
  });
  final String? imageBase64;
  final String? name;
  final String? email;
  final VoidCallback? onAdjust;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      height: 50,
      width: 300,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SUIImageBase64(
              imageBase64!,
              width: 50,
              height: 50,
              onError: const SUIUserIcon(),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name ?? "Jhon Sabowsla",
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 2),
              Text(
                email ?? "jhon@sabowsla.com",
                style: const TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: onAdjust,
          ),
        ],
      ),
    );
  }
}
