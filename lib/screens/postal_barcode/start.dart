import 'package:flutter/material.dart';
import 'package:post_delivery/components/universal/header.dart';
import 'package:post_delivery/config/colors.dart';
import 'package:post_delivery/config/images.dart';
import 'package:post_delivery/screens/postal_barcode/details.dart';

class PostalBarcodeStart extends StatefulWidget {
  const PostalBarcodeStart({super.key});

  @override
  State<PostalBarcodeStart> createState() => _PostalBarcodeStartState();
}

class _PostalBarcodeStartState extends State<PostalBarcodeStart> {
  final String description =
      "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(kPagePadding),
      child: SafeArea(
          child: Column(children: [
        const Spacer(),
        Header(
          iBarcode,
          "درخواست بارکد پستی",
          description: description,
          isBig: true,
        ),
        const Spacer(),
        buildStartButton(context),
        const Spacer(),
      ])),
    ));
  }

  TextButton buildStartButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const PostalBarcodeDetails()));
        },
        style: TextButton.styleFrom(
            backgroundColor: kPrimary.withAlpha(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kRoundness))),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'شروع کنید',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: kPrimary),
          ),
        ));
  }
}
