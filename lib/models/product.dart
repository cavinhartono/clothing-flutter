import 'package:flutter/material.dart';

class Product {
  final String title, image, desc;
  final double price;
  final Color bgColor;

  Product({
    required this.title,
    required this.image,
    required this.desc,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> products = [
  Product(
      image: "assets/images/product_0.jpeg",
      title: "Avo Black",
      desc:
          "Waist Bag, Polyester, Additional zip pocket, Adjustable string with plastic stopper, Woven label, 21 cm x 5 cm x 11 cm",
      price: 110000,
      bgColor: const Color(0xfffefbf9)),
  Product(
      image: "assets/images/product_1.jpeg",
      title: "Drigz",
      desc:
          "Drigz merupakan produk berkualitas dari kami terbuat dari bahan Nylon Webbing yang kuat dan tahan lama serta memliki warna yang menarik yang sangat cocok digunakan sehari hari!",
      price: 85000,
      bgColor: const Color(0xfffefbf9)),
  Product(
      image: "assets/images/product_2.jpg",
      title: "Horizon Zipper",
      desc:
          "Horizon merupakan salah satu koleksi hoodie zipper dengan model regular fit berlengan panjang yang dilengkapi zipper dan memiliki penutup kepala yang bisa disesuaikan. Menampilkan saku kantong depan dan label simple, hoodie ini akan membuat tampilanmu lebih menarik! ",
      price: 240000,
      bgColor: const Color(0xfffefbf9)),
  Product(
      image: "assets/images/product_3.jpg",
      title: "Hexar Zipper",
      desc:
          "Hexar merupakan salah satu koleksi hoodie zipper dengan model regular fit berlengan panjang yang dilengkapi zipper dan memiliki penutup kepala yang bisa disesuaikan. Menampilkan saku kantong depan dan label simple, hoodie ini akan membuat tampilanmu lebih menarik!",
      price: 240000,
      bgColor: const Color(0xfffefbf9)),
];
