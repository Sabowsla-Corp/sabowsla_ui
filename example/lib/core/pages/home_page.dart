import 'package:example/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: context.width,
      height: context.height,
      child: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sabowsla UI', style: ,),
            Text("Beatifully designed UI components for Flutter")
          ],
        ),
      ),
    );
  }
}
