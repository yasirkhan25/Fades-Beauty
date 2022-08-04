import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/custom_page_layout.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/decorated_container.dart';
import 'package:fades_and_beauty/ui/screens/authentications/login/login_screen.dart';
import 'package:fades_and_beauty/ui/screens/authentications/signup/signup_screen.dart';
import 'package:fades_and_beauty/ui/screens/authentications/slider/slider_screen.dart';
import 'package:fades_and_beauty/ui/screens/user_vendor/user_vendor_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class UserVendorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return UserVendorProvider();
    }, child: Consumer<UserVendorProvider>(builder: (context, model, child) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              DecoratedContainer(),
              Padding(
                padding: EdgeInsets.only(left: 30.h, right: 30.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: Text(
                        'Let’s Start',
                        style: GoogleFonts.manrope(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Text(
                      'Are you ‘Vendor’ or ‘User’',
                      style: TextStyle(fontSize: 16.sp, color: Colors.black),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 170.h,
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          model.getValue(0);
                        },
                        child: Container(
                          height: 170.h,
                          width: double.infinity,
                          decoration: model.value == 0
                              ? BoxDecoration(
                                  border:
                                      Border.all(color: primaryColor, width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: primaryColor,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                )
                              : BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.black45, width: 1),
                                ),
                                child: Container(
                                  height: 15.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                    color: model.value == 0
                                        ? primaryColor
                                        : Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              Center(
                                child: Image.asset(
                                  'assets/icons/vendor_icon.png',
                                  scale: 0.8,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Center(
                                child: Text(
                                  'I’m a Vandor',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: model.value == 0
                                        ? primaryColor
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 170.h,
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          model.getValue(1);
                        },
                        child: Container(
                          height: 170.h,
                          width: double.infinity,
                          decoration: model.value == 1
                              ? BoxDecoration(
                                  border:
                                      Border.all(color: primaryColor, width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: primaryColor,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                )
                              : BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                          // decoration: BoxDecoration(
                          //   border: Border.all(color: Colors.black26, width: 1),
                          //   borderRadius: BorderRadius.circular(15),
                          // ),
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.black45, width: 1),
                                ),
                                child: Container(
                                  height: 15.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                    color: model.value == 1
                                        ? primaryColor
                                        : Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              Center(
                                child: Image.asset(
                                  'assets/icons/user_icon.png',
                                  scale: 0.8,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Center(
                                child: Text(
                                  'I’m a User',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: model.value == 1
                                        ? primaryColor
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(child: SliderScreen2()),
                  );
                },
                child: CustomButton(
                  text: 'Next',
                ),
              ),
            ],
          ),
        ),
      );
    }));
  }
}
