import 'package:flutter/material.dart';
import 'package:travel_abuanwar072/constants.dart';
import 'package:travel_abuanwar072/size_config.dart';



class SectionTitle extends StatelessWidget {
  final String title;
  final GestureTapCallback press;

  const SectionTitle({super.key, required this.title, required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(kDefaultPadding),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text("See All"),
          ),
        ],
      ),
    );
  }
}
