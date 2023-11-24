import 'package:flutter/material.dart';
import 'package:travel_abuanwar072/constants.dart';

AppBar buildAppBar(
  BuildContext context, {
  bool isTransparent = false,
  String title = "",
}) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    title: !isTransparent
        ? Text(
            title,
            style: TextStyle(
              color: kTextColor,
            ),
          )
        : null,
    leading: IconButton(
      icon: Icon(Icons.menu, color: kIconColor),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: ClipOval(child: Image.asset("assets/images/profile.png")),
        onPressed: () {},
      )
    ],
  );
}
