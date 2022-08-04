import 'package:flutter/material.dart';
import '../colors/colors.dart';

class UsersRequestCustomConrainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Color(0xFFFBFBFB),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: primaryColor,
            offset: Offset(
                8, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
