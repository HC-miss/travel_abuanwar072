import 'package:flutter/material.dart';
import 'package:travel_abuanwar072/components/place_card.dart';
import 'package:travel_abuanwar072/components/section_title.dart';
import 'package:travel_abuanwar072/constants.dart';
import 'package:travel_abuanwar072/models/travel_spot.dart';
import 'package:travel_abuanwar072/size_config.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'Right Now At Spark', press: () {}),
        VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                    (index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(kDefaultPadding),
                    ),
                    child: PlaceCard(
                      travelSport: travelSpots[index],
                      press: () {},
                    ),
                  );
                },
              ),
              SizedBox(
                width: getProportionateScreenWidth(kDefaultPadding),
              ),
            ],
          ),
        )
      ],
    );
  }
}
