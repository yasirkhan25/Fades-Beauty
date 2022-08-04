import 'package:flutter/material.dart';

class CustomTextFieldContainer extends StatelessWidget {
  String myHintText;
  Widget myIcon;
  Widget mySufixIcon;

  CustomTextFieldContainer({this.myHintText, this.myIcon, this.mySufixIcon});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: myIcon,
                hintText: myHintText,
                suffixIcon: mySufixIcon,
              ),
            ),
          )),
    );
  }
}
