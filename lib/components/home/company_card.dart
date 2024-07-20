import 'package:flutter/material.dart';
import 'package:post_delivery/config/colors.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({required this.title, required this.avatar, super.key});

  final String avatar;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color(0x70D6E1EA),
            borderRadius: BorderRadius.circular(kRoundness)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(avatar),
                radius: 26,
              ),
              Expanded(
                  child: Center(
                      child: Text(title,
                          style: Theme.of(context).textTheme.titleLarge)))
            ],
          ),
        ));
  }
}
