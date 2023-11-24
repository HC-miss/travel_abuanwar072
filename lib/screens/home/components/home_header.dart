import 'package:flutter/material.dart';
import 'package:travel_abuanwar072/size_config.dart';

import 'search_fields.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(25)),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          // 背景图
          Image.asset(
            "assets/images/home_bg.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: getProportionateScreenHeight(315),
          ),
          // 文字
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(80)),
              Text(
                "Travelers",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(73),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 0.5,
                ),
              ),
              Text(
                "Travel Community App",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          // 搜索框
          Positioned(
            bottom: getProportionateScreenWidth(-25),
            child: SearchField()
          )
        ],
      ),
    );
  }
}
