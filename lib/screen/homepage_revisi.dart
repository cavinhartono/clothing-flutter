import 'package:baju_app/screen/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:baju_app/root.dart';
import 'package:baju_app/models/category.dart';
import 'package:baju_app/models/product.dart';
import 'package:baju_app/compoments/category.dart';
import 'package:baju_app/compoments/search_form.dart';
import 'package:baju_app/compoments/link.dart';
import 'package:baju_app/compoments/product_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double x = 0, y = 0;
  bool isDrawerMenu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Opacity
        leading: IconButton(
            onPressed: () {
              setState(() {
                isDrawerMenu = true;
                x = 290;
                y = 80;
              });
            },
            icon: SvgPicture.asset("assets/icons/menu.svg")),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset("assets/icons/Location.svg"),
          const SizedBox(width: defaultPadding / 2),
          Text("Jalan Sunda, Bandung",
              style: Theme.of(context).textTheme.subtitle2)
        ]),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Notification.svg"))
        ],
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 3000),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: defaultPadding * 2, horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                        color: titleColor),
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  const Text("Best Outfit for You",
                      style: TextStyle(fontSize: 18)),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SearchForm(),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // Foreach dari models/category
                      children: List.generate(
                        categories.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: Category(
                              title: categories[index].title, onClick: () {}),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("New Arrival",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  )),
                          Link(
                            title: "See All",
                            onClick: () {},
                          ),
                        ]),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          products.length,
                          (index) => Padding(
                                padding: const EdgeInsets.only(
                                    right: defaultPadding),
                                child: ProductList(
                                  title: products[index].title,
                                  price: products[index].price,
                                  bgColor: products[index].bgColor,
                                  image: products[index].image,
                                  onClick: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProductDetail(
                                                product: products[index])));
                                  },
                                ),
                              )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
