import 'package:flutter/material.dart';
import 'package:post_delivery/components/postal_barcode/address_chooser.dart';
import 'package:post_delivery/components/universal/top_bar.dart';
import 'package:post_delivery/config/colors.dart';
import 'package:post_delivery/config/images.dart';
import 'package:post_delivery/screens/postal_barcode/success.dart';

class PostalBarcodeAddresses extends StatefulWidget {
  const PostalBarcodeAddresses({super.key});

  @override
  State<PostalBarcodeAddresses> createState() => _PostalBarcodeAddressesState();
}

class _PostalBarcodeAddressesState extends State<PostalBarcodeAddresses> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: FloatingActionButton(
            elevation: 0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const PostalBarcodeSuccess()));
            },
            child: const Icon(
              Icons.done,
              size: 40,
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(kPagePadding),
              child: Column(
                children: [
                  TopBar(iMap, 'مبدأ و مقصد'),
                  SizedBox(
                    height: 10,
                  ),
                  AddressChooser("آدرس مبدأ"),
                  AddressChooser("آدرس مقصد"),
                ],
              ),
            ),
          )),
    );
  }
}
