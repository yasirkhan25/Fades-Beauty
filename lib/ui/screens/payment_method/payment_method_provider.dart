import 'package:flutter/cupertino.dart';

class PaymentMethodProvider extends ChangeNotifier {
  int value = 1;
  bool isvisible = false;
  setName(value) {
    if (value.length > 4) {
      isvisible = true;
      notifyListeners();
    } else {
      isvisible = false;
      notifyListeners();
    }
  }

  getValue(int x){
    value = x;
    notifyListeners();
  }
}

