import 'package:flutter/material.dart';
import 'package:post_delivery/config/colors.dart';
import 'package:post_delivery/config/images.dart';
import 'package:post_delivery/screens/home/dashboard.dart';

class PostalBarcodeSuccess extends StatefulWidget {
  const PostalBarcodeSuccess({super.key});

  @override
  State<PostalBarcodeSuccess> createState() => _PostalBarcodeSuccessState();
}

class _PostalBarcodeSuccessState extends State<PostalBarcodeSuccess> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
                Spacer(),
                Text("بارکد پستی شما",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: kPrimary)),
                SizedBox(height: 10),
                Image.asset(iQrcode, width: size.width / 1.3),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildStartButton(context),
                    SizedBox(width: 10),
                    buildPrint(context),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      )),
    );
  }

  TextButton buildStartButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const Dashboard()));
        },
        style: TextButton.styleFrom(
            backgroundColor: kPrimary.withAlpha(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kRoundness))),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'برگشت',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: kPrimary),
          ),
        ));
  }

  ElevatedButton buildPrint(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: kPrimary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kRoundness))),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'چاپ',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white),
          ),
        ));
  }
}
