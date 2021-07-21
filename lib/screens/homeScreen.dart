import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:travel_app_ui/res/appassets.dart';
import 'package:travel_app_ui/res/appcolors.dart';
import 'package:travel_app_ui/res/stringconstent.dart';
import 'package:travel_app_ui/res/textstyle.dart';
import 'package:travel_app_ui/screens/widgets/destinationCard.dart';
import 'package:travel_app_ui/screens/widgets/locationCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: PixelPerfect.extended(
        image: Image.asset(
          'assets/2.png',
          fit: BoxFit.fill,
          // alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        child: Container(
          height: _height,
          width: _width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 22, right: 22),
                  child: Row(
                    children: [
                      searchBar(_height, _width),
                      Spacer(),
                      //profile icon
                      Image.asset(
                        AppAssets.profileIcon,
                        height: 52,
                        width: 52,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: _height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: Row(
                    children: [
                      Text(
                        StringConstants.your,
                        style: AppTextStyles.h1BoldTextstyle,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(StringConstants.destinations,
                          style: AppTextStyles.h1RegularTextstyle),
                    ],
                  ),
                ),
                SizedBox(
                  height: _height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 22,
                  ),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        destinationCard(
                          height: _height,
                          width: _width,
                          photo: AppAssets.card1Image,
                          title: StringConstants.kokrobiteBeach,
                          date1: StringConstants.august14,
                          date2: StringConstants.september3,
                        ),
                        destinationCard(
                          height: _height,
                          width: _width,
                          photo: AppAssets.card2Image,
                          title: StringConstants.elminaCastle,
                          date1: StringConstants.november3,
                          date2: StringConstants.october30,
                        ),
                        destinationCard(
                          height: _height,
                          width: _width,
                          photo: AppAssets.card3Image,
                          title: StringConstants.moleNationalPark,
                          date1: StringConstants.december5,
                          date2: StringConstants.december7,
                        ),
                        SizedBox(
                          width: 40,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: _height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 22,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(StringConstants.locations,
                              style: AppTextStyles.h1BoldTextstyle),
                          SizedBox(
                            width: 10,
                          ),
                          Text(StringConstants.yourFriends,
                              style: AppTextStyles.h1RegularTextstyle)
                        ],
                      ),
                      Text(StringConstants.areVisiting,
                          style: AppTextStyles.h1RegularTextstyle),
                    ],
                  ),
                ),
                SizedBox(
                  height: _height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 22,
                  ),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        locationCard(
                          height: _height,
                          width: _width,
                          photo: AppAssets.img1,
                          title: StringConstants.bloombar,
                          subtitle: StringConstants.osu,
                        ),
                        locationCard(
                          height: _height,
                          width: _width,
                          photo: AppAssets.img2,
                          title: StringConstants.adaFoah,
                          subtitle: StringConstants.ada,
                        ),
                        SizedBox(
                          width: 40,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container searchBar(double _height, double _width) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
      height: _height * 0.06,
      width: _width * 0.5,
      child: TextField(
        decoration: InputDecoration(
          fillColor: AppColors.searchBarColor,
          border: InputBorder.none,
          icon: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              AppAssets.searchImage,
              color: Colors.grey,
            ),
          ),
          hintText: StringConstants.search,
        ),
      ),
    );
  }
}
