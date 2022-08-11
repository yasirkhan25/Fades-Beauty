import 'package:flutter/cupertino.dart';

class LogInProvider extends ChangeNotifier {
  bool isChecked = false;
  bool isSwitched=false;
  set setChecked(bool value) {
    isChecked = value;
    notifyListeners();
  }
  bool get getChecked {
    return isChecked;
  }

  setCheck(bool value)
  {
    this.isSwitched=value;
    notifyListeners();
  }
}