import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/ui/screens/seller_mode/seller_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SellerModeProfileScreen extends StatefulWidget {
  @override
  _SellerModeProfileScreenState createState() =>
      _SellerModeProfileScreenState();
}

class _SellerModeProfileScreenState extends State<SellerModeProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return SellerModeProvider();
      },
      child: Consumer<SellerModeProvider>(builder: (context, model, child) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                //color: Colors.red,
                height: MediaQuery.of(context).size.height * 0.38,
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.30,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            //height: MediaQuery.of(context).size.height *0.2,
                            child: Image.asset(
                              'assets/images/Ellipse 81.png',
                              scale: 1,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'William',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.15,
                      left: MediaQuery.of(context).size.width * 0.55,
                      child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset('assets/icons/image 98 (1).png')),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.24,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 0),
                        margin: EdgeInsets.only(left: 25, right: 25),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.11,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Seller Mode',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                value: model.isSwitched,
                                onChanged: (value) {
                                  model.setCheck(value);
                                },
                                activeTrackColor: primaryColor,
                                activeColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          width: 160.w,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset:
                                    Offset(2, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '30k',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                'Followers',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 160.w,
                          height: MediaQuery.of(context).size.height * 0.07,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset:
                                    Offset(2, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '34',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                'Following',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                        itemCount: optionslist.length,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFDFDFD),
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 2,
                                      offset: Offset(
                                          2, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE5E7F5),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            optionslist[index].imageUrl,
                                            scale: 0.6,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        optionslist[index].name.toString(),
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Icon(Icons.arrow_forward_ios_rounded),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class ChooseOptions {
  final String imageUrl;
  final String name;
  final myIcon;

  ChooseOptions({this.imageUrl, this.name, this.myIcon});
}

final List<ChooseOptions> optionslist = [
  ChooseOptions(
    name: 'Choose Professions',
    imageUrl: 'assets/icons/Frame (2).png',
  ),
  ChooseOptions(
    name: 'Choose Experience',
    imageUrl: 'assets/icons/Frame (3).png',
  ),
  ChooseOptions(
    name: 'Asked Question',
    imageUrl: 'assets/icons/Frame (4).png',
  ),
  ChooseOptions(
    name: 'Fill Form',
    imageUrl: 'assets/icons/Frame 1000007259.png',
  ),
  ChooseOptions(
    name: 'Start Chat',
    imageUrl: 'assets/icons/message-square.png',
  ),
];
