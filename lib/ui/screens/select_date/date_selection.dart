import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/vendor_fill_form/vendor_fill_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateSelectionScreen extends StatefulWidget {
  @override
  _DateSelectionScreenState createState() => _DateSelectionScreenState();
}

class _DateSelectionScreenState extends State<DateSelectionScreen> {
  DateTime _dateTime = DateTime.now();

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
          name: 'As Vendor',
        ),
      ),
      drawer: MenuDashBoardPage(),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 25, right: 25),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios_rounded),
                  SizedBox(width: 15.w),
                  Text(
                    'Select Date',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SfDateRangePicker(
              selectionMode: DateRangePickerSelectionMode.range,
              selectionColor: primaryColor,
              startRangeSelectionColor: primaryColor,
              endRangeSelectionColor: primaryColor,
              rangeSelectionColor: Colors.teal.withOpacity(0.25),
              initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 4)),
                  DateTime.now().add(const Duration(days: 3))),
            ),
            Text(
              _dateTime.hour.toString().padLeft(2, '0') +
                  ':' +
                  _dateTime.minute.toString().padLeft(2, '0') +
                  ':' +
                  _dateTime.second.toString().padLeft(2, '0'),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VendorForm()),
          );
        },
        child: CustomButton(
          text: 'Save and Continue',
        ),
      ),
    );
  }
}
