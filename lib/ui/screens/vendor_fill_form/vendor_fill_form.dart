import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/send_offer/send_offer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class VendorForm extends StatefulWidget {
  @override
  _ProfessionState createState() => _ProfessionState();
}

class _ProfessionState extends State<VendorForm> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item(
        'Sunday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Monday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Tuesday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Wednesday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Thursday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Friday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Saturday',
        Icon(
          Icons.arrow_right,
          color: const Color(0xFF167F67),
        )),
  ];

  ///Image Picker Path...................................
  File image1, image2, image3;
  ImagePicker imagePicker = ImagePicker();
  getImage(index) async {
    final img = await imagePicker.getImage(
      source: ImageSource.gallery,
    );
    if (index == 1) {
      if (img != null) {
        setState(() {
          image1 = File(img.path);
        });
      }
    } else if (index == 2) {
      if (img != null) {
        setState(() {
          image2 = File(img.path);
        });
      }
    } else if (index == 3) {
      if (img != null) {
        setState(() {
          image3 = File(img.path);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 130.h,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          title: AppBarContainer(
            imageUrl: 'assets/icons/Ellipse 81 (2).png',
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Business/Professional name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Color(0xFFE9ECF0),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Services Description',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Color(0xFFE9ECF0),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Days  and time of services',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Color(0xFFE9ECF0),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: DropdownButton<Item>(
                          isExpanded: true,
                          underline: Container(),
                          hint: Text("Day"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
                                  user.icon,
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    user.name,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Add Business Locatrion',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Color(0xFFE9ECF0),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Portfolio Images',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      image1 == null
                          ? InkWell(
                              onTap: () {
                                getImage(1);
                              },
                              child: Container(
                                  height: 90.h,
                                  width: 90.h,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE9ECF0),
                                  ),
                                  child: DottedBorder(
                                    color: Color(
                                        0xFFAEAEAE), //color of dotted/dash line
                                    strokeWidth: 1, //thickness of dash/dots
                                    dashPattern: [10, 6],
                                    child: Container(
                                      height: 170.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  )),
                            )
                          : Container(
                              height: 150.h,
                              width: 100.w,
                              child: Image.file(image1),
                            ),
                      image2 == null
                          ? InkWell(
                              onTap: () {
                                getImage(2);
                              },
                              child: Container(
                                  height: 90.h,
                                  width: 90.h,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE9ECF0),
                                  ),
                                  child: DottedBorder(
                                    // borderType: BorderType.Circle,
                                    color: Color(
                                        0xFFAEAEAE), //color of dotted/dash line
                                    strokeWidth: 1, //thickness of dash/dots
                                    dashPattern: [10, 6],
                                    child: Container(
                                      height: 170.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  )),
                            )
                          : Container(
                              height: 150.h,
                              width: 100.w,
                              child: Image.file(image2),
                            ),
                      image3 == null
                          ? InkWell(
                              onTap: () {
                                getImage(3);
                              },
                              child: Container(
                                height: 90.h,
                                width: 90.h,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE9ECF0),
                                ),
                                child: DottedBorder(
                                    // borderType: BorderType.Circle,
                                    color: Color(
                                        0xFFAEAEAE), //color of dotted/dash line
                                    strokeWidth: 1, //thickness of dash/dots
                                    dashPattern: [10, 6],
                                    child: Container(
                                      height: 170.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Icon(
                                        Icons.add,
                                      ),
                                    )),
                              ),
                            )
                          : Container(
                              height: 150.h,
                              width: 100.w,
                              child: Image.file(image3),
                            ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SendOfferScreen()),
            );
          },
          child: CustomButton(
            text: 'Save',
          ),
        ),
      ),
    );
  }
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}
