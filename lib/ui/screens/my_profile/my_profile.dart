import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/my_profile/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ProfileScreenProvider();
      },
      child: Consumer<ProfileScreenProvider>(builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 150.h,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            title: AppBarContainer(
              imageUrl: 'assets/images/Ellipse 81.png',
              name: 'William',
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 25,right: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    children: [
                      Icon(Icons.edit,size: 15,),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text('Edit Profile'),
                    ],
                  ),
                ),
              )
            ],
          ),
          drawer: MenuDashBoardPage(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.58,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFFDFDFD),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Do you provide services for man?'),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(0);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 0
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('Yes'),
                                  SizedBox(
                                    width: 30.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(1);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 1
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('No'),
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text('Do you provide services for Woman?'),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(2);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 2
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('Yes'),
                                  SizedBox(
                                    width: 30.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(3);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 3
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('No'),
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text('Do you provide services for Children?'),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(2);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 2
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('Yes'),
                                  SizedBox(
                                    width: 30.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(2);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 2
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('No'),
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text(
                                  'Does your facility accommodate the handicap?'),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(3);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 3
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('Yes'),
                                  SizedBox(
                                    width: 30.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(3);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 3
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('No'),
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text('Do you provide in home mobile services?'),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(4);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 4
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('Yes'),
                                  SizedBox(
                                    width: 30.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(4);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 4
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('No'),
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text(
                                  'Do you have days your services are discounted?'),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(5);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 5
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('Yes'),
                                  SizedBox(
                                    width: 30.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      model.getValue(5);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black45, width: 1),
                                      ),
                                      child: Container(
                                        height: 10.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          color: model.value == 5
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text('No'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///.......PRICE RANGE CONTAINER..........................
                ///
                ///
                ///
                ///
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'What is the price range for children (persons under 18)?',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),

                      /// Under 18 dropdown menus.................................
                      ///
                      ///
                      ///

                      Container(
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15,right: 15),
                          child: DropdownButton(
                            underline: SizedBox(),
                            isExpanded: true,
                            // Initial Value
                            value: model.selectedPriceUnder18,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: model.under18PriceList.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String newValue) {
                              model.setSelectedItem(newValue);
                            },
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'What is the price range for an adult?',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),

                      /// Adult dropdown menus.................................
                      ///
                      ///
                      ///
                      Container(
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15,right: 15),
                          child: DropdownButton(
                            underline: SizedBox(),
                            isExpanded: true,
                            // Initial Value
                            value: model.selectedPriceAdult,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: model.adultPriceList.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String newValue) {
                              model.setSelectedAdultPrice(newValue);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'What is the value of your coupon? ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),

                      /// Select Copun dropdown menus.................................
                      ///
                      ///
                      ///
                      ///
                      Container(
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15,right: 15),
                          child: DropdownButton(
                            underline: SizedBox(),
                            isExpanded: true,
                            // Initial Value
                            value: model.selectCopun,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: model.copunPriceList.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String newValue) {
                              model.setSelectcopun(newValue);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomButton(text: 'Save'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class Item {
  const Item(this.name, this.icon);

  final String name;
  final Icon icon;
}
