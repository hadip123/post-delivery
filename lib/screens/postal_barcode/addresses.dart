import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:post_delivery/components/postal_barcode/address_chooser.dart';
import 'package:post_delivery/components/universal/top_bar.dart';
import 'package:post_delivery/config/colors.dart';
import 'package:post_delivery/config/images.dart';

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
          body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(kPagePadding),
          child: Column(
            children: [
              TopBar(iMap, 'مبدأ و مقصد'),
              SizedBox(
                height: 10,
              ),
              AddressChooser()
            ],
          ),
        ),
      )),
    );
  }
}
