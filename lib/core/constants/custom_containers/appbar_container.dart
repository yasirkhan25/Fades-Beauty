import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../colors/colors.dart';

class AppBarContainer extends StatelessWidget {
  String name;
  final subname;
  final myIcon;
  final String imageUrl;
  AppBarContainer({this.name = null, this.myIcon, this.subname = null,this.imageUrl = null});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        imageUrl == null ? SizedBox():
        Image.asset(imageUrl,
          fit: BoxFit.cover,
          height: 60,
        ),
        SizedBox(
          height: 10.h,
        ),
        name == null ? SizedBox():
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              myIcon,
              color: Colors.white,
              size: 20,
            ),
            subname == null ? SizedBox():
            Text(
              subname,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ],
    ),
    );
  }
}
