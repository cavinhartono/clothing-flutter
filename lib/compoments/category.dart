import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:baju_app/root.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.icon,
    required this.title,
    required this.onClick,
  });

  final String icon, title;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onClick,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius))),
        ), // Border kategori, nanti mau coba pake BoxShadow
        child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
            child: Column(children: [
              SvgPicture.asset(icon),
              const SizedBox(height: defaultPadding / 2),
              Text(title, style: Theme.of(context).textTheme.subtitle2)
            ])));
  }
}
