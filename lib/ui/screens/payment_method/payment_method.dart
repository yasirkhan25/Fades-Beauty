import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/payment_method/payment_method_provider.dart';
import 'package:fades_and_beauty/ui/screens/seller_mode/seller_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodScreen extends StatefulWidget {
  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return PaymentMethodProvider();
      },
      child: Consumer<PaymentMethodProvider>(builder: (context, model, child) {
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
            title: AppBarContainer(name: 'Notification',),
          ),
          drawer: MenuDashBoardPage(),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25,bottom: 15),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios_outlined),
                          SizedBox(width: 15.w,),
                          Text('Your Charges',style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 280.h,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Colors.black12, width: 1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25,bottom: 25),
                            child: Text('Payment Methods',style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                  offset: Offset(0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40.h,
                                    width: 40.w,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),

                                    child: Center(
                                      child: SvgPicture.asset(
                                        'assets/icons/Vector_1.svg',
                                        // scale: 0.5,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Row(
                                    children: [
                                      Text(
                                        'Apple Payment',
                                        style: TextStyle(
                                            fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 100,),
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
                                            height: 12.h,
                                            width: 12.w,
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h,),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                  offset: Offset(0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40.h,
                                    width: 40.w,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),

                                    child: Center(
                                      child: SvgPicture.asset(
                                        'assets/icons/logos_paypal.svg',
                                        // scale: 0.5,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Row(
                                    children: [
                                      Text(
                                        'Paypal',
                                        style: TextStyle(
                                            fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 150,),
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
                                            height: 12.h,
                                            width: 12.w,
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: CustomButton(text: 'Book Appointment',),
        );
      }),
    );
  }
}