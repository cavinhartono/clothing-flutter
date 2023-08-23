import 'package:baju_app/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:baju_app/models/product.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child:
                      SvgPicture.asset("assets/icons/Heart.svg", height: 20)))
        ],
      ),
      body: Column(
        children: [
          Image.asset(product.image,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 3),
                    topRight: Radius.circular(defaultBorderRadius * 3)),
              ),
              child: Row(children: [
                Expanded(
                    child: Text(product.title,
                        style: Theme.of(context).textTheme.headline6)),
                const SizedBox(height: defaultPadding),
                Text("IDR. {$product.price.toString()}",
                    style: Theme.of(context).textTheme.headline6),
              ]),
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text("Deskripsi"))
        ],
      ),
    );
  }
}
