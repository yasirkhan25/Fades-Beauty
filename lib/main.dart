import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/ui/screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fades & Beauty',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: ScreenUtilInit(
        //TODO: Screen sizes to be changed according to the design provided
        designSize: Size(width, height),
        builder: () => SplashScreen(),
      ),
    );
  }
}
