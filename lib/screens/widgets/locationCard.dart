import 'package:flutter/material.dart';
import 'package:travel_app_ui/res/appassets.dart';
import 'package:travel_app_ui/res/appcolors.dart';
import 'package:travel_app_ui/res/textstyle.dart';

class locationCard extends StatelessWidget {
  const locationCard({
    Key? key,
    required double height,
    required double width,
    required String photo,
    required String title,
    required String subtitle,
  })  : _height = height,
        _width = width,
        photo = photo,
        title = title,
        subtitle = subtitle,
        super(key: key);

  final double _height;
  final double _width;
  final String photo;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        height: _height * 0.13,
        width: _width * 0.65,
        decoration: BoxDecoration(
            color: AppColors.cardColor,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Image.asset(photo),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.h2BoldTextstyle,
                  ),
                  Text(
                    subtitle,
                    style: AppTextStyles.h2RegularTextstyle,
                  ),
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      new Image.asset(AppAssets.avatar1),
                      new Positioned(
                        left: 20.0,
                        child: new Image.asset(AppAssets.avatar2),
                      ),
                      new Positioned(
                        left: 40.0,
                        child: new Image.asset(AppAssets.avatar3),
                      ),
                      new Positioned(
                        left: 60.0,
                        child: new Image.asset(AppAssets.avatar4),
                      ),
                      new Positioned(
                        left: 80.0,
                        child: new Image.asset(AppAssets.avatar5),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
