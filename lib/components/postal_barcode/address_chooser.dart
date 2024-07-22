import 'package:flutter/material.dart';
import 'package:post_delivery/config/colors.dart';

class AddressChooser extends StatelessWidget {
  const AddressChooser(this.title, {
    super.key,

  });

  // final TextEditingController controller;
  // final Location location;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          maxLines: 4,
          decoration: InputDecoration(
              hintText: "",
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(kRoundness)),
              filled: true,
              label: Text(
                title,
                style: TextStyle(
                    color: Colors.indigo, fontWeight: FontWeight.bold),
              ),
              fillColor: kCardBackground),
        ),
      ],
    );
  }
}

class Location {}
