import 'package:flutter/material.dart';
import 'package:travel_abuanwar072/components/app_bar.dart';
import 'package:travel_abuanwar072/components/custom_bottom_nav_bar.dart';

import 'components/body.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "New Events"),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
