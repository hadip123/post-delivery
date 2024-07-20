import 'package:flutter/material.dart';
import 'package:post_delivery/components/home/company_card.dart';
import 'package:post_delivery/components/home/dashboard_item.dart';
import 'package:post_delivery/components/universal/footer.dart';
import 'package:post_delivery/components/universal/header.dart';
import 'package:post_delivery/config/colors.dart';
import 'package:post_delivery/config/images.dart';
import 'package:post_delivery/screens/postal_barcode/start.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Map> items = [
    {'id': 1, 'image': iCourier, 'title': 'درخواست پیک', 'onTap': (context) {}},
    {
      'id': 2,
      'image': iBarcode,
      'title': 'درخواست بارکد پستی',
      'onTap': (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => const PostalBarcodeStart()));
      }
    },
    {
      'id': 3,
      'image': iOrderingHistory,
      'title': 'تاریخچه سفارشات',
      'onTap': (context) {}
    },
    {
      'id': 4,
      'image': iDeliveryGuy,
      'title': 'درخواست ماموریت',
      'onTap': (context) {}
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(kPagePadding),
      child: Column(children: [
        const Header(iDashboard, 'پیشخان'),
        const CompanyCard(
            avatar:
                "https://img.freepik.com/premium-photo/3d-avatar-boy-character_914455-603.jpg",
            title: 'رهپویان، دانش و اندیشه'),
        const SizedBox(height: 15),
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            crossAxisCount: 2,
            children: items
                .map((e) => DashboardItem(
                    title: e['title'],
                    icon: e['image'],
                    id: e['id'],
                    onTap: () => e['onTap'](context)))
                .toList(),
          ),
        ),
        const Footer()
      ]),
    )));
  }
}
