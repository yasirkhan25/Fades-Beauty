import 'dart:async';
import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:flutter/material.dart';
import 'authentications/slider/slider_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SliderScreen1()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: SvgPicture.asset('assets/icons/splash_screen_icon.svg'),
        ),
      ),
    );
  }
}
