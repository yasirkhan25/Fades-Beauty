import 'dart:ffi';

import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/my_profile/profile_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 150.h,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/Ellipse 1.png',
                  scale: 0.8,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Hania',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Positioned(
              top: 40.h,
              left: 35.w,
              child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset('assets/icons/image 98 (1).png')),
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 25, right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Edit Profile'),
                ],
              ),
            ),
          )
        ],
      ),
      drawer: MenuDashBoardPage(),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 16),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black26,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_sharp,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        'About me',
                        style:
                            TextStyle(color: Color(0xFF5A5A5A)),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Colors.black26,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      'Residence',
                      style: TextStyle( color: Color(0xFF5A5A5A)),
                    ),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
