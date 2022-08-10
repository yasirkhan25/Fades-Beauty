

import 'package:flutter/cupertino.dart';

class SettingScreenProvider extends ChangeNotifier {
  bool isChecked = false;
  bool isSwitched = true;
  set setChecked(bool value) {
    isChecked = value;
    notifyListeners();
  }

  bool get getChecked {
    return isChecked;
  }

  setCheck(bool value) {
    this.isSwitched = value;
    notifyListeners();
  }
}
