

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SendOfferProvider extends ChangeNotifier {

  void setSelectedItem(var s) {
    myBudget = s;
    notifyListeners();
  }

  String myBudget = '\$';

  // List of items in our dropdown menu
  var setBudget = [
    '\$',
    '\$5',
    '\$10',
    '\$15',
    '\$20',
  ];

  }


