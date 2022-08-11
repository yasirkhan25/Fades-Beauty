import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/ui/screens/auth_screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.43,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/Rectangle 39393.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.asset(
                    'assets/images/Rectangle 39393 (1).png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.27,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.22,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.23,
                    left: MediaQuery.of(context).size.width * 0.04,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/Rectangle 11.png',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.29,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Fades and Beauty',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Text(
                                    'Robert (Owner)',
                                    style: TextStyle(
                                        fontSize: 13.sp, color: Colors.white),
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Container(
                                height: 40.h,
                                width: 40.w,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(Icons.mode_comment_outlined),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                height: 40.h,
                                width: 40.w,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(Icons.call),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          '2400 US-30 Suite 106, Oswego, IL\n60543, Dukhan, Hwy',
                          style: TextStyle(
                              fontSize: 13.sp, color: Color(0xFFFCFCFC)),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Row(
                          children: [
                            Text(
                              '4.4',
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.white),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade700,
                              size: 15,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.white,
                              size: 5,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '5.5 Km',
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    )),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.20,
                    left: MediaQuery.of(context).size.width * 0.73,
                    child: Container(
                      height: 30.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        color: Color(0xFF00CD52),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Text(
                        'Open',
                        style: TextStyle(fontSize: 14.sp),
                      )),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.20,
                    left: MediaQuery.of(context).size.width * 0.37,
                    child: Container(
                      height: 11.h,
                      width: 11.w,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.20,
                    left: MediaQuery.of(context).size.width * 0.42,
                    child: Container(
                      height: 11.h,
                      width: 11.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.20,
                    left: MediaQuery.of(context).size.width * 0.47,
                    child: Container(
                      height: 11.h,
                      width: 11.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.20,
                    left: MediaQuery.of(context).size.width * 0.52,
                    child: Container(
                      height: 11.h,
                      width: 11.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.20,
                    left: MediaQuery.of(context).size.width * 0.57,
                    child: Container(
                      height: 11.h,
                      width: 11.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.07,
                    left: MediaQuery.of(context).size.width * 0.07,
                    child: SvgPicture.asset(
                      'assets/icons/splash_screen_icon.svg',
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eleifend nunc a nisi placerat aliquam.',
                    style: TextStyle(fontSize: 14, color: Color(0xFF5A5A5A)),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    'Opening Hours',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Monday - Friday',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF5A5A5A)),
                            ),
                            Text(
                              '7:30 - 11:30 AM',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF5A5A5A)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(),
                            Text(
                              '1:30 - 5:30 PM',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF5A5A5A)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Friday - Friday',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF5A5A5A)),
                            ),
                            Text(
                              '7:30 - 11:30 AM',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF5A5A5A)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    'Location',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),

                  /// Location Container.....................
                  ///
                  ///
                  Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/images/Capture 5.png',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      Image.asset(
                        'assets/images/Rectangle 108.png',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.08,
                        left: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset(
                          'assets/icons/Group 5680.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.14,
                        left: MediaQuery.of(context).size.width * 0.72,
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset(
                            'assets/icons/Group 65.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.15,
                        left: MediaQuery.of(context).size.width * 0.025,
                        child: Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.send,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Get Direction',
                                  style: TextStyle(
                                      fontSize: 12.sp, color: Colors.white),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    'Portfolio',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),

                  /// Portfolio Container.....................
                  ///
                  ///
                  Container(
                    height: 70.h,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/Attachment_1633661667.png',
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/image 89.png',
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/Attachment_1633661667.png',
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/image 95.png',
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/Attachment_1633661667.png',
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogInScreen()),
                );
              },
              child: CustomButton(
                text: 'Back',
              ),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
