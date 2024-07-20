import 'package:flutter/material.dart';
import 'package:post_delivery/config/colors.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({
    super.key,
    required this.title,
    required this.icon,
    required this.id,
    required this.onTap,
  });

  final String title;
  final String icon;
  final int id;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kRoundness),
              color: kCardBackground),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        icon,
                      ),
                    ),
                  ),
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: const Color(0xff424482)),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
