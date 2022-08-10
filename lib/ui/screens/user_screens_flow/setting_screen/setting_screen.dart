import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/user_screens_flow/post_request_screen/post_request_screen.dart';
import 'package:fades_and_beauty/ui/screens/user_screens_flow/setting_screen/setting_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return SettingScreenProvider();
      },
      child: Consumer<SettingScreenProvider>(builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.h,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            title: AppBarContainer(
              name: 'Settings',
            ),
          ),
          drawer: MenuDashBoardPage(),
          body: Padding(
            padding: EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications_none_outlined),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Notifications',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Push notifications',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF686868)),
                          ),
                          Switch(
                            value: model.isSwitched,
                            onChanged: (value) {
                              model.setCheck(value);
                            },
                            activeTrackColor: primaryColor,
                            activeColor: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PostRequestScreen()),
              );
            },
            child: CustomButton(
              text: 'Next',
            ),
          ),
        );
      }),
    );
  }
}
