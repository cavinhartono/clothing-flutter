import 'package:flutter/material.dart';

class Product {
  final String title, image;
  final double price;
  final Color bgColor;

  Product({
    required this.title,
    required this.image,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> products = [
  Product(
      image: "assets/images/product_0.png",
      title: "Long Sleeve Shirts",
      price: 80.0,
      bgColor: const Color(0xfffefbf9)),
  Product(
      image: "assets/images/product_1.png",
      title: "Casual Henley Shirts",
      price: 99.0,
      bgColor: const Color(0xfffefbf9)),
  Product(
      image: "assets/images/product_2.png",
      title: "Curved Hem Shirts",
      price: 180.0,
      bgColor: const Color(0xfffefbf9)),
  Product(
      image: "assets/images/product_3.png",
      title: "Casual Nolin",
      price: 149.0,
      bgColor: const Color(0xfffefbf9)),
];
