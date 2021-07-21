import 'package:flutter/material.dart';
import 'package:travel_app_ui/res/appassets.dart';
import 'package:travel_app_ui/res/appcolors.dart';
import 'package:travel_app_ui/res/stringconstent.dart';
import 'package:travel_app_ui/res/textstyle.dart';

class destinationCard extends StatelessWidget {
  const destinationCard({
    Key? key,
    required double height,
    required double width,
    required String photo,
    required String title,
    required String date1,
    required String date2,
  })  : _height = height,
        _width = width,
        photo = photo,
        title = title,
        date1 = date1,
        date2 = date2,
        super(key: key);

  final double _height;
  final double _width;
  final String photo;
  final String title;
  final String date1;
  final String date2;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        height: _height * 0.38,
        width: _width * 0.54,
        decoration: BoxDecoration(
            color: AppColors.cardColor,
            borderRadius: BorderRadius.circular(14)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              photo,
              height: _height * 0.15,
              width: _width,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                title,
                style: AppTextStyles.h2BoldTextstyle,
              ),
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConstants.us,
                        style: AppTextStyles.usTextstyle,
                      ),
                      Text(
                        StringConstants.newYork,
                        style: AppTextStyles.newYorkTextstyle,
                      ),
                    ],
                  ),
                  Text(
                    " - - - ",
                    style: TextStyle(color: Colors.grey[200]),
                  ),
                  Column(
                    children: [
                      Image.asset(AppAssets.plane),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        StringConstants.hm,
                        style: AppTextStyles.newYorkTextstyle,
                      ),
                    ],
                  ),
                  Text(
                    " - - - ",
                    style: TextStyle(color: Colors.grey[200]),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConstants.gh,
                        style: AppTextStyles.ghTextstyle,
                      ),
                      Text(
                        StringConstants.accra,
                        style: AppTextStyles.newYorkTextstyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.arrowLeft,
                            height: 14,
                            width: 14,
                          ),
                          Text(
                            date1,
                            style: AppTextStyles.dateTextstyle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.arrowRight,
                            height: 14,
                            width: 14,
                          ),
                          Text(
                            date2,
                            style: AppTextStyles.dateTextstyle,
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: _height * 0.044,
                    width: _width * 0.18,
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
                    child: Center(
                      child: Text(
                        StringConstants.details,
                        style: AppTextStyles.detailsTextstyle,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
