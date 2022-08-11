import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/custom_textfileld.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/decorated_container.dart';
import 'package:fades_and_beauty/ui/screens/authentications/login/login_screen.dart';
import 'package:fades_and_beauty/ui/screens/select_date/date_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        DecoratedContainer(),
        Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account!',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Create account and get the services',
                style: TextStyle(fontSize: 15, color: Color(0xFF5A5A5A)),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldContainer(
                myHintText: 'User Name',
                myIcon: Icon(Icons.person_outline_outlined),
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextFieldContainer(
                myHintText: 'Email',
                myIcon: Icon(Icons.mail_outline),
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextFieldContainer(
                myHintText: 'Phone number',
                myIcon: Icon(Icons.phone_outlined),
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextFieldContainer(
                myHintText: 'Password',
                myIcon: Icon(Icons.lock_outline),
                mySufixIcon: Icon(
                  Icons.visibility_off,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextFieldContainer(
                myHintText: 'Confirm Password',
                myIcon: Icon(Icons.lock_outline),
                mySufixIcon: Icon(
                  Icons.visibility_off,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DateSelectionScreen()),
                    );
                  },
                  child: CustomButton(
                    text: 'Sign up',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LogInScreen()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Sign in',
                              style:
                                  TextStyle(color: primaryColor, fontSize: 16),
                            ),
                          ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ])),
    );
  }
}
