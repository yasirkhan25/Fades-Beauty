import 'package:flutter/material.dart';
import '../colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  String text;

  CustomButton({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20,right: 20,bottom: 15),
      child: Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )),
    );
  }
}
