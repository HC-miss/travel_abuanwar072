import 'package:flutter/material.dart';
import 'package:travel_abuanwar072/screens/home/components/home_header.dart';
import 'package:travel_abuanwar072/size_config.dart';

import 'popular_places.dart';
import 'top_travelers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // You have to call SizeConfig on your starting page
    SizeConfig().init(context);
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            HomeHeader(),
            VerticalSpacing(),
            PopularPlaces(),
            VerticalSpacing(),
            TopTravelers(),
            VerticalSpacing(),
          ],
        ),
      ),
    );
  }
}
