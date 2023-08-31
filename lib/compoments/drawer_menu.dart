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
      color: black500,
      child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding * 2, horizontal: defaultPadding * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/logo.png", height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: Column(children: [
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: SvgPicture.asset("assets/icons/Heart.svg"),
                    ),
                    const Text("Home",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Montserrat"))
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: SvgPicture.asset("assets/icons/Heart.svg"),
                    ),
                    const Text("Products",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Montserrat"))
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: SvgPicture.asset("assets/icons/Heart.svg"),
                    ),
                    const Text("Home",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Montserrat"))
                  ]),
                ]),
              )
            ],
          )),
    );
  }
}
