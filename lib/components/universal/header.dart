import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(this.icon, this.title,
      {super.key, this.isBig, this.description});

  final String icon;
  final String title;
  final bool? isBig;
  final String? description;

  @override
  Widget build(BuildContext context) {
    double size = isBig == true ? 150 : 100;
    return SizedBox(
      height: isBig == true ? 340 : 220,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              height: size,
              width: size,
            ),
            SizedBox(height: 15),
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            if (description != null)
              Text(description ?? '',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.black45))
          ],
        ),
      ),
    );
  }
}
