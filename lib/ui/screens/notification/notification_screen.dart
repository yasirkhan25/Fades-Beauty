import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/seller_mode/seller_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return SellerModeProvider();
      },
      child: Consumer<SellerModeProvider>(builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 120.h,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            title: AppBarContainer(name: 'Notification',subname: '',),
          ),
          drawer: MenuDashBoardPage(),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25,bottom: 15),
                      child: Center(
                        child: Text('Notifications',style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    ListView.builder(
                        itemCount: notificationslist.length,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 5,bottom: 5),
                            child: InkWell(
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.11,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFBFBFB),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 60.h,
                                        width: 60.w,
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
                                      SizedBox(width: 10.w),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            notificationslist[index].message.toString(),
                                            style: TextStyle(
                                                fontSize: 14, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            notificationslist[index].myTime.toString(),
                                            style: TextStyle(color: Colors.black54,
                                                fontSize: 14,),
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
      }),
    );
  }
}

class NotificationClass {
  final String imageUrl;
  final String message;
  final String myTime;
  final myIcon;

  NotificationClass({this.imageUrl, this.message, this.myIcon,this.myTime});
}

final List<NotificationClass> notificationslist = [
  NotificationClass(
    message: 'Hania Send you a User request',
    myTime: '3 min ago',
    imageUrl: 'assets/images/Ellipse 1.png',
  ),
  NotificationClass(
    message: 'Alina send you a User request',
    myTime: '3 min ago',
    imageUrl: 'assets/images/Ellipse 785.png',
  ),
  NotificationClass(
    message: 'You checkout is successful',
    myTime: '4 min ago',
    imageUrl: 'assets/icons/Frame (5).png',
  ),
  NotificationClass(
    message: 'You checkout is successful',
    myTime: '4 min ago',
    imageUrl: 'assets/icons/Frame (5).png',
  ),
  NotificationClass(
    message: 'You checkout is successful',
    myTime: '5 min ago',
    imageUrl: 'assets/icons/Frame (5).png',
  ),
];
