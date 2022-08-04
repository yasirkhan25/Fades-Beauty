import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/onboarding_screen_for_test/slider_main.dart';
import 'package:fades_and_beauty/ui/screens/summary/summary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceLevelCharges extends StatefulWidget {
  @override
  _ExperienceLevelChargesState createState() => _ExperienceLevelChargesState();
}

class _ExperienceLevelChargesState extends State<ExperienceLevelCharges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100.h,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: AppBarContainer(
          name: 'Experience level',
        ),
      ),
      drawer: MenuDashBoardPage(),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_rounded),
                    SizedBox(width: 15.w),
                    Text(
                      'Your Charges',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  itemCount: experiencelist.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            experiencelist[index].imageUrl,
                            fit: BoxFit.fitWidth,
                            // alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            experiencelist[index].image2Url,
                            fit: BoxFit.fitWidth,
                            //alignment: Alignment.center,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30, top: 40),
                              child: Text(
                                experiencelist[index].name,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Padding(
                              padding: EdgeInsets.only(right: 50, top: 35),
                              child: Column(
                                children: [
                                  Text(
                                    experiencelist[index].threeMonths,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    experiencelist[index].sixMonths,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    experiencelist[index].sixMonthsPlus,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SummaryScreen()),
                  );
                },
                child: CustomButton(
                  text: 'Next',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///Experience Level Charges Screen Class..............................
///
///
///

class ExperienceLevelOption {
  final String imageUrl;
  final String image2Url;
  final String name;
  final String threeMonths;
  final String sixMonths;
  final String sixMonthsPlus;

  ExperienceLevelOption(
      {this.imageUrl,
      this.name,
      this.image2Url,
      this.threeMonths,
      this.sixMonths,
      this.sixMonthsPlus});
}

///Experience Level Charges Screen List..............................
///
///
///
///
final List<ExperienceLevelOption> experiencelist = [
  ExperienceLevelOption(
    name: 'Super Star',
    imageUrl: 'assets/images/Group 5780.png',
    image2Url: 'assets/images/Vector.png',
    threeMonths: '\$ 85 for 3 months',
    sixMonths: '\$ 135 for 6 months',
    sixMonthsPlus: '\$ 135 for 6 months',
  ),
  ExperienceLevelOption(
    name: 'All Star',
    imageUrl: 'assets/images/Rectangle 204.png',
    image2Url: 'assets/images/Mask Group.png',
    threeMonths: '\$ 45 for 3 months',
    sixMonths: '\$ 80 for 6 months',
    sixMonthsPlus: '\$ 120 for 6 months',
  ),
  ExperienceLevelOption(
    name: 'Veteran',
    imageUrl: 'assets/images/Group 5800.png',
    image2Url: 'assets/images/Group 5800.png',
    threeMonths: '\$ 35 for 3 months',
    sixMonths: '\$ 65 for 6 months',
    sixMonthsPlus: '\$ 110 for 6 months',
  ),
  ExperienceLevelOption(
    name: 'Rookie\nSensation',
    imageUrl: 'assets/images/Rectangle 206.png',
    image2Url: 'assets/images/Group 5802.png',
    threeMonths: '\$ 30 for 3 months',
    sixMonths: '\$ 55 for 6 months',
    sixMonthsPlus: '\$ 100 for 6 months',
  ),
];
