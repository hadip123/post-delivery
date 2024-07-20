import 'package:flutter/material.dart';
import 'package:post_delivery/config/images.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(iSys, width: 110),
        const Spacer(),
        const Text('INTELLIGENT SYSTEMS',
            style: TextStyle(
                color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
