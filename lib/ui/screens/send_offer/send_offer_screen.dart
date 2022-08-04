import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/profession/choose_profession.dart';
import 'package:fades_and_beauty/ui/screens/send_offer/send_offer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class SendOfferScreen extends StatefulWidget {
  @override
  _SendOfferScreenState createState() => _SendOfferScreenState();
}

class _SendOfferScreenState extends State<SendOfferScreen> {
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return SendOfferProvider();
      },
      child: Consumer<SendOfferProvider>(builder: (context, model, child) {
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
            title: AppBarContainer(name: 'Send Offer'),
          ),
          drawer: MenuDashBoardPage(),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Add Detile TextField...................
                          ///
                          SizedBox(
                            height: 30.h,
                          ),
                          Text(
                            'Add detail',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              height: 45.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFFE6E6E6), width: 1),
                                color: Colors.white,
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

                          /// Set Budget TextField...................
                          ///
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Set Budget',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 45.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFE6E6E6), width: 1),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, right: 15),
                              child: DropdownButton(
                                underline: SizedBox(),
                                isExpanded: true,
                                // Initial Value
                                value: model.myBudget,

                                // Down Arrow Icon
                                icon: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xFFAEAEAE),
                                  size: 30,
                                ),

                                // Array list of items
                                items: model.setBudget.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(
                                      items,
                                    ),
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

                          /// Day and Time TextField...................
                          ///
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Day & Time',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 45.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFE6E6E6), width: 1),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(left: 20, right: 15),
                                child: TextFormField(
                                  controller: dateinput,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.calendar_today,size: 20,),
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.keyboard_arrow_down_outlined,
                                      size: 30,)
                                  ),
                                  readOnly: true,
                                  onTap: () async {
                                    DateTime pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(
                                            2000), //DateTime.now() - not to allow to choose before today.
                                        lastDate: DateTime(2101));

                                    if (pickedDate != null) {
                                      print(
                                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                      String formattedDate =
                                          DateFormat('yyyy-MM-dd')
                                              .format(pickedDate);
                                      print(
                                          formattedDate); //formatted date output using intl package =>  2021-03-16
                                      //you can implement different kind of Date Format here according to your requirement

                                      setState(() {
                                        dateinput.text =
                                            formattedDate; //set output date to TextField value.
                                      });
                                    } else {
                                      print("Date is not selected");
                                    }
                                  },
                                )),
                          ),

                          /// Location TextField...................
                          ///
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Location',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              height: 45.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFFE6E6E6), width: 1),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.location_on_outlined,
                                    color: Color(0xFFAEAEAE),
                                    size: 25,
                                  ),
                                  border: InputBorder.none,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          /// Offer Sent Button Called in bottomNavigationBar...................
          ///
          bottomNavigationBar: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ChooseProfession()),
              );
            },
            child: CustomButton(
              text: 'Offer Sent',
            ),
          ),
        );
      }),
    );
  }
}
