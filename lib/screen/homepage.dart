import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:baju_app/root.dart';

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
      body: Container(
        child: Column(
          children: [
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Text("Best Outfit for You", style: TextStyle(fontSize: 18)),
            Form(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search item",
                  filled: true,
                  fillColor: Colors.white,
                  border: outlineInputBorder,
                  enabledBorder: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset("assets/icons/Search.svg"),
                  ), // Search
                  suffixIcon: SizedBox(
                    width: 48,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: primaryColor),
                      child: SvgPicture.asset("assets/icons/Filter.svg"),
                    ), // Button
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    borderSide: BorderSide.none);
