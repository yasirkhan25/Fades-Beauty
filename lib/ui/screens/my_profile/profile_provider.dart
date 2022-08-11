import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfileScreenProvider extends ChangeNotifier {
  int value = null;
  int value2 = null;
  int value3 = null;
  int value4 = null;
  int value5 = null;
  int value6 = null;

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

  getValue3(int x) {
    value3 = x;
    notifyListeners();
  }

  getValue4(int x) {
    value4 = x;
    notifyListeners();
  }

  getValue5(int x) {
    value5 = x;
    notifyListeners();
  }

  getValue6(int x) {
    value6 = x;
    notifyListeners();
  }

  void setSelectedItem(var s) {
    selectedPriceUnder18 = s;
    notifyListeners();
  }

  String selectedPriceUnder18 = '\$18-24';

  // List of items in our dropdown menu
  var under18PriceList = [
    '\$18-24',
    '\$5',
    '\$10',
    '\$15',
    '\$20',
  ];

  String selectedPriceAdult = '\$18-24';

  // List of items in our dropdown menu
  var adultPriceList = [
    '\$18-24',
    '\$5',
    '\$10',
    '\$15',
    '\$20',
  ];
  void setSelectedAdultPrice(var s) {
    selectedPriceAdult = s;
    notifyListeners();
  }

  String selectCopun = '\$5';

// List of items in our dropdown menu
  var copunPriceList = [
    '\$5',
    '\$10',
    '\$15',
    '\$20',
    '\$25',
  ];
  void setSelectcopun(var s) {
    selectCopun = s;
    notifyListeners();

  }
}
