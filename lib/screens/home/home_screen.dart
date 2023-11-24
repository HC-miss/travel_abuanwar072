import 'package:flutter/material.dart';
import 'package:travel_abuanwar072/components/app_bar.dart';
import 'package:travel_abuanwar072/components/custom_bottom_nav_bar.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context, isTransparent: true),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
