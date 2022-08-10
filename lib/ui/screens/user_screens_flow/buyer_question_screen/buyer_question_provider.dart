import 'package:flutter/cupertino.dart';

class BuyerQuestionProvider extends ChangeNotifier {


  int value = 1;
  int value2 = 1;


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

  getValue(int x) {
    value = x;
    notifyListeners();
  }

  getValue2(int x) {
    value2 = x;
    notifyListeners();
  }

  String priceRange = '\$18-24';

  // List of items in our dropdown menu
  var priceList = [
    '\$18-24',
    '\$5',
    '\$10',
    '\$15',
    '\$20',
  ];
  void setSelectedAdultPrice(var s) {
    priceRange = s;
    notifyListeners();


  }

}
