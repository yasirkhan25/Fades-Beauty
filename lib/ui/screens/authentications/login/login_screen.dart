import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/custom_textfileld.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/decorated_container.dart';
import 'package:fades_and_beauty/ui/screens/authentications/signup/signup_screen.dart';
import 'package:fades_and_beauty/ui/screens/experience_level/experience_level.dart';
import 'package:fades_and_beauty/ui/screens/home/base_screen.dart';
import 'package:fades_and_beauty/ui/screens/home/home_screen.dart';
import 'package:fades_and_beauty/ui/screens/my_profile/my_profile.dart';
import 'package:fades_and_beauty/ui/screens/profession/choose_profession.dart';
import 'package:fades_and_beauty/ui/screens/select_date/date_selection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return LogInProvider();
    }, child: Scaffold(
      body: Consumer<LogInProvider>(builder: (context, model, child) {
        return SingleChildScrollView(
            child: Column(children: [
          DecoratedContainer(),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter email & password to login',
                  style: TextStyle(fontSize: 15, color: Color(0xFF5A5A5A)),
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTextFieldContainer(
                  myHintText: 'Email',
                  myIcon: Icon(Icons.mail_outline_outlined),
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTextFieldContainer(
                  myHintText: 'Password',
                  myIcon: Icon(Icons.lock_outline),
                  mySufixIcon: Icon(
                    Icons.visibility_off,
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => ResetPassword()),
                        // );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BaseScreen()),
                      );
                    },
                    child: CustomButton(
                      text: 'Log in',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      // ignore: unnecessary_new
                      child: Container(
                          margin: EdgeInsets.only(left: 40.0, right: 10.0),
                          child: Divider(
                            color: Colors.grey,
                            height: 36,
                            thickness: 1,
                          )),
                    ),
                    Text(
                      "Or login with",
                      style: GoogleFonts.manrope(
                        fontSize: ScreenUtil().setSp(16),
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      // ignore: unnecessary_new
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0, right: 40.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                          thickness: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.27,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Center(
                        child: SvgPicture.asset('assets/icons/Path.svg'),
                      ),
                    ),
                    SizedBox(
                      width: 15.h,
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.27,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Center(
                        child: SvgPicture.asset('assets/icons/Vector_1.svg'),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DateSelectionScreen()),
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                            text: 'Dont have an account?',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Sign up ',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 16),
                              ),
                            ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]));
      }),
    ));
  }
}
