import 'package:flutter/material.dart';
import 'package:travel_abuanwar072/components/section_title.dart';
import 'package:travel_abuanwar072/constants.dart';
import 'package:travel_abuanwar072/models/user.dart';
import 'package:travel_abuanwar072/size_config.dart';



class TopTravelers extends StatelessWidget {
  const TopTravelers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'Top Travelers on Spark', press: () {}),
        VerticalSpacing(of: 20),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          padding: EdgeInsets.all(getProportionateScreenWidth(24)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [kDefaultShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                topTravelers.length,
                    (index) => UserCard(
                  user: topTravelers[index],
                  press: () {},
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}


class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user, required this.press});

  final User user;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              user.image,
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              fit: BoxFit.cover,
            ),
          ),
          VerticalSpacing(of: 10),
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
