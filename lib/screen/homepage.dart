import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:baju_app/root.dart';
import 'package:baju_app/compoments/search_form.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Opacity
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset("assets/icons/menu.svg")),
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
      body: Column(
        children: [
          Text(
            "Explore",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.w500, color: titleColor),
          ),
          const Text("Best Outfit for You", style: TextStyle(fontSize: 18)),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: SearchForm(),
          ),
        ],
      ),
    );
  }
}
