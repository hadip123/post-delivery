import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar(this.icon, this.title, {super.key});
  final String title;
  final String icon;
  final double size = 50;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: size,
          height: size,
        ),
        SizedBox(width: 10),
        Text(title,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold))
      ],
    );
  }
}
