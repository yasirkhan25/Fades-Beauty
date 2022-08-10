import 'dart:math';

import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_screen_provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawerOpen ? 0.6 : 1.0)
        ..rotateZ(isDrawerOpen ? pi / 280 : 0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 120.h,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                if (isDrawerOpen) {
                  setState(() {
                    xOffset = 0;
                    yOffset = 0;
                    isDrawerOpen = false;
                  });
                } else {
                  if (!isDrawerOpen) {
                    setState(() {
                      xOffset = size.width - 100;
                      yOffset = size.height / 5;
                      isDrawerOpen = true;
                    });
                  }
                }
              },
              child: Container(child: Icon(Icons.menu_rounded))),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),


          title: AppBarContainer(
            name: 'Hi William',
            subname: 'Alaska, US',

              myIcon: Icons.location_on_outlined
          ),
        ),
         drawer: MenuDashBoardPage(),
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search_outlined),
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),

                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Text(
                      'User Request',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '10',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                ListView.builder(
                    itemCount: userslist.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.18,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xFFFBFBFB),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: primaryColor,
                                    offset: Offset(
                                        8, 0), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          userslist[index].imageUrl,
                                          fit: BoxFit.cover,
                                          height: 40,
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              userslist[index].name.toString(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              'July 7, 2022',
                                              style: TextStyle(
                                                  color: Color(0xFFAEAEAE)),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: SizedBox(),
                                        ),
                                        Container(
                                            height: 35.h,
                                            width: 35.w,
                                            decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Icon(
                                              Icons.messenger_outline,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eleifend nunc a nisi placerat aliquam.'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UsersRequest {
  final String imageUrl;
  final String name;
  Widget myIcon;

  UsersRequest({this.imageUrl, this.name, this.myIcon});
}

final List<UsersRequest> userslist = [
  UsersRequest(
    name: 'Maddy',
    imageUrl: 'assets/images/Ellipse 1.png',
  ),
  UsersRequest(
    name: 'Samra',
    imageUrl: 'assets/images/Ellipse 785.png',
  ),
  UsersRequest(
    name: 'Hania',
    imageUrl: 'assets/images/Ellipse 1.png',
  ),
  UsersRequest(
    name: 'Noor',
    imageUrl: 'assets/images/Ellipse 785.png',
  ),
];
