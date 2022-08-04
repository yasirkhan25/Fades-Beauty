import 'package:fades_and_beauty/core/constants/custom_containers/custom_page_layout.dart';
import 'package:fades_and_beauty/ui/screens/authentications/login/login_screen.dart';
import 'package:fades_and_beauty/ui/screens/user_vendor/user_vendor_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image 98.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Image.asset(
            'assets/images/Mask.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
              bottom: 60,
              right: 35,
              child: FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(child: UserVendorScreen()),
                  );
                },
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                ),
              )),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome To Fades and Beauty ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'The Easiest Way To Find The Best Barbers and Beauty Technicians Providing Service In Your City.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SliderScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image 99 (1).png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Image.asset(
            'assets/images/Mask.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
              bottom: 60,
              right: 35,
              child: FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(child: SliderScreen3()),
                  );
                },
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                ),
              )),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Move Up Into The Big League’s ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Purchase a low cost subscription package and have your business seen by a larger audience.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SliderScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Rectangle 11 (2).png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Image.asset(
            'assets/images/Mask.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
              bottom: 60,
              right: 35,
              child: FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(child: SliderScreen4()),
                  );
                },
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                ),
              )),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Step Out Of Shadows',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Create your business profile, expound on your strengths, and we will market you on our platform.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SliderScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Rectangle 11 (3).png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Image.asset(
            'assets/images/Mask.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
              bottom: 60,
              right: 35,
              child: FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(child: SliderScreen5()),
                  );
                },
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                ),
              )),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Buyer will use the free Plateform',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Buyer will send the request and will use the plateform for free',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SliderScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Rectangle 11 (7).png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Image.asset(
            'assets/images/Mask.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
              bottom: 60,
              right: 35,
              child: FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(child: LogInScreen()),
                  );
                },
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                ),
              )),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Get Your Business Booming',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Combine your professionalism with Fades and Beauty promotion, and watch your business reach heights you never imagined!.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
