
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserHomeScreen extends StatefulWidget {
  @override
  _UserHomeScreenState createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 120.h,
        elevation: 0,
        leading: InkWell(child: Container(child: Icon(Icons.menu_rounded))),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: AppBarContainer(
            name: 'Hi William',
            subname: 'Alaska, US',
            myIcon: Icons.location_on_outlined),
      ),
      drawer: MenuDashBoardPage(),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text(
                'Recently Viewd',
                style: TextStyle(fontSize: 18),
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
                              left: 15, right: 15, top: 10, bottom: 10),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFFFBFBFB),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(

                                        child: Image.asset(
                                          userslist[index].imageUrl,
                                          fit: BoxFit.cover,
                                          height: 50,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // Container(
                                      //   child: Image.asset(
                                      //     userslist[index].imageUrl,
                                      //     fit: BoxFit.cover,
                                      //     height: 50,
                                      //   ),
                                      //   decoration: BoxDecoration(
                                      //     borderRadius: BorderRadius.circular(12)
                                      //   ),
                                      // ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Container(
                                        width: 240.w,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    userslist[index]
                                                        .name
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                      color: Color.fromRGBO(
                                                          198, 0, 0, 0.08),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/icons/ic_outline-discount.svg',
                                                      //fit: BoxFit.cover,
                                                      height: 15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/icons/image 102.png',
                                                  fit: BoxFit.cover,
                                                  height: 15,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "${userslist[index].myAddress}",
                                                  style: TextStyle(
                                                      color: primaryColor),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.call,
                                                      size: 15,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .mode_comment_outlined,
                                                      size: 15,
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.access_time_rounded,
                                                      size: 15,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      '3:00 pm to 12am',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black54),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
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
    );
  }
}

class UsersRequest {
  final String imageUrl;
  final String name;
  final String myAddress;
  Widget myIcon;

  UsersRequest({this.imageUrl, this.name, this.myAddress, this.myIcon});
}

final List<UsersRequest> userslist = [
  UsersRequest(
    name: 'William',
    myAddress: '366, Rawdat Al Faras, Dukhan Hwy',
    imageUrl: 'assets/images/image 108 (1).png',
  ),
  UsersRequest(
    name: 'Henry',
    myAddress: '201, Leagooriyat, Dukhan Hwy',
    imageUrl: 'assets/images/image 105 (1).png',
  ),
  UsersRequest(
    name: 'Precise Vet Clinic',
    myAddress: 'B79, Al ruwais west, Dukhan Hwy',
    imageUrl: 'assets/images/image 106.png',
  ),
  UsersRequest(
    name: 'Pacific Veterinary',
    myAddress: '628, Al Hagen camel, Dukhan Hwy',
    imageUrl: 'assets/images/image 109.png',
  ),
];
