



import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
class BaseScreen extends StatefulWidget {


  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        MenuDashBoardPage(),
        HomeScreen()
      ],
    );
  }
}
