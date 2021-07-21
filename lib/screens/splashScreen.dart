import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:travel_app_ui/res/appassets.dart';
import 'package:travel_app_ui/res/appcolors.dart';
import 'package:travel_app_ui/res/stringconstent.dart';
import 'package:travel_app_ui/res/textstyle.dart';
import 'package:travel_app_ui/screens/home.dart';
import 'package:travel_app_ui/screens/homeScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return PixelPerfect.extended(
        image: Image.asset(
          'assets/1.png',
          fit: BoxFit.fill,
          // alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        child: SafeArea(
            child: Scaffold(
          body: Stack(children: [
            Image.asset(
              AppAssets.splashImage,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 18.0),
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.white,
                  Colors.white70,
                  Colors.white12,
                  Colors.transparent
                ],
              )),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringConstants.discover,
                    style: AppTextStyles.h1BoldTextstyle,
                  ),
                  Text(
                    StringConstants.amazingPlaces,
                    style: AppTextStyles.h1RegularTextstyle,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  InkWell(
                    onTap: () {
                      print("clicked");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Container(
                      height: _height * 0.06,
                      width: _width * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                            end: Alignment.centerRight,
                            colors: [
                              AppColors.greenColor,
                              AppColors.greenColor,
                              Colors.green.shade300,
                            ],
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            StringConstants.getStarted,
                            style: AppTextStyles.getStartedTextstyle,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        )));
  }
}
