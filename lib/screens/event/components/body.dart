import 'package:flutter/material.dart';
import 'package:travel_abuanwar072/components/place_card.dart';
import 'package:travel_abuanwar072/constants.dart';
import 'package:travel_abuanwar072/models/travel_spot.dart';
import 'package:travel_abuanwar072/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(25),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              runSpacing: 25,
              children: [
                ...List.generate(
                  travelSpots.length,
                  (index) => PlaceCard(
                    travelSport: travelSpots[index],
                    isFullCard: true,
                    press: () {},
                  ),
                ),
                AddNewPlaceCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class AddNewPlaceCard extends StatelessWidget {
  const AddNewPlaceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(321),
      width: getProportionateScreenWidth(158),
      decoration: BoxDecoration(
        color: Color(0xFF6A6C93).withOpacity(0.09),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: Color(0xFFEBE8F6),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionateScreenWidth(53),
            width: getProportionateScreenWidth(53),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
                padding: MaterialStatePropertyAll(EdgeInsets.zero),
                shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    )
                ),
              ),
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: getProportionateScreenWidth(35),
                color: Colors.white,
              ),
            ),
          ),
          VerticalSpacing(of: 10),
          Text(
            "Add New Place",
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
