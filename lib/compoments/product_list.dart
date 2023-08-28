import 'package:flutter/material.dart';
import 'package:baju_app/root.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.title,
    required this.price,
    required this.bgColor,
    required this.image,
    required this.onClick,
  });

  final String title, image;
  final double price;
  final Color bgColor;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.all(Radius.circular(defaultBorderRadius))),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(defaultBorderRadius))),
                child: Image.asset(image, height: 148)),
            const SizedBox(height: defaultPadding / 2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child:
                      Text(title, style: const TextStyle(color: Colors.black)),
                ),
                Text(CurrencyFormat.convertToIdr(price, 2),
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            )
          ],
        ),
      ),
    );
  }
}
