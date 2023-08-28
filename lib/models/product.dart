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
      image: "assets/images/product_0.jpeg",
      title: "Long Sleeve Shirts",
      price: 80000,
      bgColor: const Color(0xfffefbf9)),
  Product(
      image: "assets/images/product_1.jpeg",
      title: "Casual Henley Shirts",
      price: 99000,
      bgColor: const Color(0xfffefbf9)),
  Product(
      image: "assets/images/product_2.jpg",
      title: "Curved Hem Shirts",
      price: 180000,
      bgColor: const Color(0xfffefbf9)),
  Product(
      image: "assets/images/product_3.jpg",
      title: "Casual Nolin",
      price: 149000,
      bgColor: const Color(0xfffefbf9)),
];
