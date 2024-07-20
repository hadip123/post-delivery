import 'package:flutter/material.dart';
import 'package:post_delivery/config/colors.dart';
import 'package:post_delivery/screens/home/dashboard.dart';

class PostDeliveryApp extends StatefulWidget {
  const PostDeliveryApp({super.key});

  @override
  State<PostDeliveryApp> createState() => _PostDeliveryAppState();
}

class _PostDeliveryAppState extends State<PostDeliveryApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(colorScheme: kColorScheme, fontFamily: 'peyda'),
        home: const Directionality(
            textDirection: TextDirection.rtl, child: Dashboard()));
  }
}
