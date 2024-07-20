import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:post_delivery/config/colors.dart';

class AddressChooser extends StatelessWidget {
  const AddressChooser({
    super.key,
    required this.mapController,
  });

  // final TextEditingController controller;
  // final Location location;

  final MapController mapController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 100,
            width: 100,
            child:
                OSMFlutter(controller: mapController, osmOption: OSMOption())),
        TextField(
          maxLines: 4,
          decoration: InputDecoration(
              hintText: "",
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(kRoundness)),
              filled: true,
              label: const Text(
                'آدرس مبدآ',
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
