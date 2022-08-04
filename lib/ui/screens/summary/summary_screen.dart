import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/seller_mode/seller_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SummaryScreen extends StatefulWidget {
  @override
  _SummaryScreenState createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
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
            title: AppBarContainer(name: 'Your summary'),
          ),
          drawer: MenuDashBoardPage(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    children: [
                      Container(
                        height: 140.h,
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              height: 100.h,
                              width: 100.h,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/Vector.svg',
                                fit: BoxFit.cover,
                              ),

                            ),
                            SizedBox(width: 20.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Barber', style:
                                    TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.bold),),
                                    SizedBox(width: 100.w,),
                                    Text('\$342', style:
                                    TextStyle(fontSize: 14,
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                SizedBox(height: 15.h,),
                                Row(
                                  children: [
                                    Text('Bookin  on: ', style:
                                    TextStyle(fontSize: 12,
                                        color: Color(0xFF767676)),),
                                    Text('14 Jul, 2022', style:
                                    TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(height: 15.h,),
                                Row(
                                  children: [
                                    Container(
                                      height: 30.h,
                                      width: 90.w,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.black12, width: 1),
                                      ),
                                      child: Center(child: Text('Edit',
                                        style: TextStyle(
                                            color: Colors.black),)),
                                    ),
                                    SizedBox(width: 10.w,),
                                    Container(
                                      height: 30.h,
                                      width: 90.w,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.black12, width: 1),
                                      ),
                                      child: Center(child: Text('Confirm',
                                          style: TextStyle(
                                              color: Colors.black))),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15.h,),

                      Container(
                        height: 140.h,
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              height: 100.h,
                              width: 100.h,
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/Frame_1.svg',
                                fit: BoxFit.cover,
                              ),

                            ),
                            SizedBox(width: 20.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Manipedi cure', style:
                                    TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.bold),),
                                    SizedBox(width: 50.w,),
                                    Text('\$360', style:
                                    TextStyle(fontSize: 14,
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                SizedBox(height: 15.h,),
                                Row(
                                  children: [
                                    Text('Bookin  on: ', style:
                                    TextStyle(fontSize: 12,
                                        color: Color(0xFF767676)),),
                                    Text('14 Jul, 2022', style:
                                    TextStyle(fontSize: 12,
                                        fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(height: 15.h,),
                                Row(
                                  children: [
                                    Container(
                                      height: 30.h,
                                      width: 90.w,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.black12, width: 1),
                                      ),
                                      child: Center(child: Text('Edit',
                                        style: TextStyle(
                                            color: Colors.black),)),
                                    ),
                                    SizedBox(width: 10.w,),
                                    Container(
                                      height: 30.h,
                                      width: 90.w,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.black12, width: 1),
                                      ),
                                      child: Center(child: Text('Confirm',
                                          style: TextStyle(
                                              color: Colors.black))),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15.h,),

                      Container(
                        height: 100.h,
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Location', style:
                                TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.bold),),
                                SizedBox(width: 50.w,),
                                Text('Changes', style:
                                TextStyle(fontSize: 14,
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: 15.h,),
                            Text('201, Leagooriyat, Dukhan Hwy, Doha', style:
                            TextStyle(fontSize: 14,
                                color: Color(0xFF767676),
                                fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

                      SizedBox(height: 15.h,),

                      Container(
                        height: 170.h,
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Price Details', style:
                            TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),),
                            SizedBox(height: 20.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Sub total', style:
                                TextStyle(fontSize: 14,
                                    color: Color(0xFF767676),
                                    fontWeight: FontWeight.bold),),
                                Text('\$702', style:
                                TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 20.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Discount', style:
                                TextStyle(fontSize: 14,
                                    color: Color(0xFF767676),
                                    fontWeight: FontWeight.bold),),
                                Text('\$0', style:
                                TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.bold),),
                              ],
                            ),

                            SizedBox(height: 20.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Amount', style:
                                TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.bold),),
                                Text('\$742', style:
                                TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      CustomButton(
                        text: 'Checkout',
                      ),
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
