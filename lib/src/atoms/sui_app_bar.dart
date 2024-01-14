import 'package:flutter/material.dart';
import 'package:sabowsla_ui/src/atoms/sui_button_text.dart';

class SUIAppBar extends StatelessWidget {
  final Widget? leading;
  final List<String> routes;
  final String? activeRoute;
  final Function(String route)? onRouteChanged;
  final Widget? trailing;
  final double? barHeight;
  const SUIAppBar({
    super.key,
    this.leading,
    required this.routes,
    this.activeRoute,
    this.onRouteChanged,
    this.trailing,
    this.barHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: barHeight ?? 50,
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: const BoxDecoration(
        color: Colors.black54,
        border: Border(
          bottom: BorderSide(
            color: Colors.white24,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          if (leading != null) leading!,
          if (leading != null) const SizedBox(width: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: routes.length,
              itemBuilder: (context, index) {
                final route = routes[index];
                return SUIButtonText(
                  route,
                  onTap: () {
                    onRouteChanged?.call(route);
                  },
                );
              },
            ),
          ),
          const Spacer(),
          if (trailing != null) const SizedBox(width: 10),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
