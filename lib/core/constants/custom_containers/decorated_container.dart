import 'package:flutter/material.dart';
import '../colors/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DecoratedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(MediaQuery.of(context).size.width, 50.0)),
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/icons/splash_screen_icon.svg',
          height: 100.h,
        ),
      ),
    );
  }
}
