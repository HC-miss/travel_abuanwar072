import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_abuanwar072/constants.dart';
import 'package:travel_abuanwar072/screens/event/event_screen.dart';
import 'package:travel_abuanwar072/size_config.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon: "assets/icons/calendar.svg",
                title: "Events",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventScreen(),
                    ),
                  );
                },
              ),
              NavItem(
                icon: "assets/icons/chat.svg",
                title: "Chat",
                isActive: true,
                press: () {},
              ),
              NavItem(
                icon: "assets/icons/friendship.svg",
                title: "Friends",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.icon,
    required this.title,
    required this.press,
    this.isActive = false,
  });

  final String icon, title;
  final GestureTapCallback press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) kDefaultShadow],
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(kTextColor, BlendMode.srcIn),
              height: 28,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
