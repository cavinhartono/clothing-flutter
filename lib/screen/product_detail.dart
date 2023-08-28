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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black)),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding / 2),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(product.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w700)),
                              const SizedBox(height: 4),
                              Text(
                                  CurrencyFormat.convertToIdr(product.price, 2),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600)),
                            ])),
                    const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: defaultPadding / 2),
                        child: Text(
                            "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit at quaerat unde sapiente id nulla, quasi magnam distinctio officiis esse? Similique eius esse molestias.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(height: 1.5))),
                    Row(
                      children: [
                        ColorDot(
                            isActive: false,
                            color: const Color(0xffbee8ea),
                            onClick: () {}),
                        ColorDot(
                            isActive: true,
                            color: const Color(0xff141b4a),
                            onClick: () {}),
                        ColorDot(
                            isActive: false,
                            color: const Color(0xffb4e5c3),
                            onClick: () {}),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 2, vertical: defaultPadding),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor, shape: const StadiumBorder()),
              child: const Text("Add to Cart"))),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    required this.isActive,
    required this.onClick,
  });

  final Color color;
  final bool isActive;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
          padding: const EdgeInsets.all(defaultPadding / 4),
          decoration: BoxDecoration(
              border: Border.all(
                  color: isActive ? primaryColor : Colors.transparent),
              shape: BoxShape.circle),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: color,
          )),
    );
  }
}
