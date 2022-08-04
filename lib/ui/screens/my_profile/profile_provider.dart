

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfileScreenProvider extends ChangeNotifier {
  int value = null;
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

