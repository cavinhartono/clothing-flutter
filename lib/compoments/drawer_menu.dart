import 'package:baju_app/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding * 2, horizontal: defaultPadding),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Image.asset("assets/images/logo.png")),
              Column(children: [
                Row(children: [
                  Container(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: SvgPicture.asset("assets/icons/Heart"),
                  ),
                  const Text("Home", style: TextStyle(color: Colors.white))
                ])
              ])
            ],
          )),
    );
  }
}
