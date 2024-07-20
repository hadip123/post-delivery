import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:post_delivery/components/universal/top_bar.dart';
import 'package:post_delivery/config/colors.dart';
import 'package:post_delivery/config/images.dart';
import 'package:post_delivery/screens/postal_barcode/addresses.dart';

class PostalBarcodeDetails extends StatefulWidget {
  const PostalBarcodeDetails({super.key});

  @override
  State<PostalBarcodeDetails> createState() => _PostalBarcodeDetailsState();
}

class _PostalBarcodeDetailsState extends State<PostalBarcodeDetails> {
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
                      builder: (_) => const PostalBarcodeAddresses()));
            },
            child: const Icon(
              Icons.chevron_left,
              size: 40,
            ),
          ),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(kPagePadding),
            child: Column(children: [
              const TopBar(iCourier, 'جزئیات مرسوله'),
              buildNameInput(),
              const SizedBox(
                height: 15,
              ),
              buildProductKind(),
              const SizedBox(
                height: 15,
              ),
              buildDimensionFields(),
              const SizedBox(
                height: 15,
              ),
              buildQuantityField(),
              const SizedBox(
                height: 15,
              ),
              buildWeightField(),
              const SizedBox(
                height: 15,
              ),
              buildInsuranceField(),
              const SizedBox(
                height: 15,
              ),
              buildImageField()
            ]),
          ))),
    );
  }

  Widget buildImageField() {
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            child: Text('عکس',
                textAlign: TextAlign.right,
                style: buildTitleStyle().copyWith(fontSize: 16))),
        InkWell(
          onTap: onPickImageTap,
          child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [kCardBackground.withBlue(240), kCardBackground]),
                  borderRadius: BorderRadius.circular(kRoundness)),
              child: Center(
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  const Icon(Icons.camera, color: kPrimary),
                  const SizedBox(width: 5),
                  Text('انتخاب از گالری',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: kPrimary))
                ]),
              )),
        ),
      ],
    );
  }

  void onPickImageTap() async {}

  bool hasInsurance = false;
  Widget buildInsuranceField() => Row(
        children: [
          Text('بیمه', style: buildTitleStyle().copyWith(fontSize: 16)),
          const Spacer(),
          Switch(
              inactiveThumbColor: Colors.indigo[400],
              value: hasInsurance,
              onChanged: (v) => setState(() {
                    hasInsurance = v;
                  })),
        ],
      );

  int quantity = 1;
  Widget buildQuantityField() {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Text('تعداد', textAlign: TextAlign.right, style: buildTitleStyle()),
      NumberPicker(
          minValue: 1,
          maxValue: 9999,
          value: quantity,
          axis: Axis.horizontal,
          textStyle: const TextStyle(color: Colors.black54),
          selectedTextStyle: const TextStyle(color: Colors.black, fontSize: 20),
          onChanged: (v) {
            quantity = v;
            setState(() {});
          })
    ]);
  }

  double weight = 1;
  Widget buildWeightField() {
    return TextField(
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: buildFormDecoration('وزن (kg)'),
    );
  }

  Widget buildDimensionFields() {
    return Row(children: [
      Expanded(
          child: TextField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,
        decoration: buildFormDecoration('طول'),
      )),
      const SizedBox(width: 10),
      Expanded(
          child: TextField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,
        decoration: buildFormDecoration('عرض'),
      )),
      const SizedBox(width: 10),
      Expanded(
          child: TextField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,
        decoration: buildFormDecoration('ارتفاع'),
      ))
    ]);
  }

  DropdownButtonFormField<String> buildProductKind() {
    return DropdownButtonFormField(
        decoration: buildFormDecoration('نوع کالا'),
        isExpanded: true,
        items: const [
          DropdownMenuItem(value: 'breakable', child: Text('شکستنی')),
          DropdownMenuItem(value: 'not_breakable', child: Text('غیر شکستنی')),
        ],
        onChanged: (v) {});
  }

  TextField buildNameInput() {
    return TextField(
      decoration: buildFormDecoration('نام'),
    );
  }

  InputDecoration buildFormDecoration(String label) {
    return InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(kRoundness)),
        filled: true,
        label: Text(
          label,
          style: buildTitleStyle(),
        ),
        fillColor: kCardBackground);
  }

  TextStyle buildTitleStyle() {
    return const TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold);
  }
}
