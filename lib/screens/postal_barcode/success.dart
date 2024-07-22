import 'package:flutter/material.dart';
import 'package:post_delivery/config/colors.dart';
import 'package:post_delivery/screens/home/dashboard.dart';

class PostalBarcodeSuccess extends StatefulWidget {
  const PostalBarcodeSuccess({super.key});

  @override
  State<PostalBarcodeSuccess> createState() => _PostalBarcodeSuccessState();
}

class _PostalBarcodeSuccessState extends State<PostalBarcodeSuccess> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kPagePadding),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.verified, size: 100, color: kPrimary),
                const Text("موفقیت آمیز بود"),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => const Dashboard()));
                    },
                    child: const Text("برگشت"))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
