import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_abuanwar072/constants.dart';
import 'package:travel_abuanwar072/models/travel_spot.dart';
import 'package:travel_abuanwar072/models/user.dart';
import 'package:travel_abuanwar072/size_config.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard(
      {super.key,
      required this.travelSport,
      this.isFullCard = false,
      required this.press});

  final TravelSpot travelSport;
  final bool isFullCard;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    final width = getProportionateScreenWidth(isFullCard ? 158 : 137);

    return SizedBox(
      width: width,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(travelSport.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: width,
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [kDefaultShadow],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Text(
                  travelSport.name,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: isFullCard ? 17 : 12,
                  ),
                ),
                if (isFullCard)
                  Text(
                    travelSport.date.day.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                if (isFullCard)
                  Text(
                    "${DateFormat.MMMM().format(travelSport.date)} ${travelSport.date.year}",
                  ),
                VerticalSpacing(of: 10),
                Travelers(
                  users: travelSport.users,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Travelers extends StatelessWidget {
  const Travelers({super.key, required this.users});

  final List<User> users;

  ClipOval buildTravelerFace(int index) {
    return ClipOval(
      child: Image.asset(
        users[index].image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;

    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ...List.generate(
            users.length,
                (index) {
              totalUser++;
              return Positioned(
                left: (22 * index).toDouble(),
                child: buildTravelerFace(index),
              );
            },
          ),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: Container(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
