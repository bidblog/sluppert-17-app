import 'package:flutter/material.dart';
import 'package:slupperapplive/models/sluppert_model.dart';

// Vi nedarver fra ChangeNotifier for at få adgang til en metode der kan opdatere widgets når data ændrer sig.
class SluppertData extends ChangeNotifier {
  List<SluppertModel> _slupperter = SluppertModel.demoData();

  //En funktion der kan give mig en bestemt sluppert retur
  SluppertModel sluppertAtIndex(int index) {
    return _slupperter[index];
  }

  //En Beregnet property der fortæller hvor mange slupperter vi har vi vores data
  int get numberOfSlupperter {
    return _slupperter.length;
  }

  // En funktion der modtager en donation og opdaterer en sluppert
  void receiveDonation({@required double donation, @required int atIndex}) {
    _slupperter[atIndex].donationTotal += donation;

    // Her kalder vi en metode der fortæller vores lyttere at data har opdateret sig.
    notifyListeners();
    print('NotifyListeners');
  }
}
