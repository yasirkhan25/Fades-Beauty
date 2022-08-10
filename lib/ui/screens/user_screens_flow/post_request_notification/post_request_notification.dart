import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostRequestNotificationScreen extends StatefulWidget {
  @override
  _PostRequestNotificationScreenState createState() =>
      _PostRequestNotificationScreenState();
}

class _PostRequestNotificationScreenState
    extends State<PostRequestNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100.h,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: AppBarContainer(
          name: 'Notification',
        ),
      ),
      drawer: MenuDashBoardPage(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                ListView.builder(
                    itemCount: notificationslist.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 5),
                        child: InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            decoration: BoxDecoration(
                              color: Color(0xFFFBFBFB),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 65.h,
                                    width: 70.w,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        notificationslist[index].imageUrl,
                                        scale: 0.5,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        notificationslist[index]
                                            .message
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        notificationslist[index]
                                            .myTime
                                            .toString(),
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationClass {
  final String imageUrl;
  final String message;
  final String myTime;
  final myIcon;

  NotificationClass({this.imageUrl, this.message, this.myIcon, this.myTime});
}

final List<NotificationClass> notificationslist = [
  NotificationClass(
    message: 'Tour request Approve',
    myTime: '3 min ago',
    imageUrl: 'assets/icons/Frame (5).png',
  ),
];
