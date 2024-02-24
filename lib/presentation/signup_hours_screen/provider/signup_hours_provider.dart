import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signup_hours_model.dart';
import '../models/chipviewfortyfour_item_model.dart';
import '../models/chipviewfifty_item_model.dart';

/// A provider class for the SignupHoursScreen.
///
/// This provider manages the state of the SignupHoursScreen, including the
/// current signupHoursModelObj
class SignupHoursProvider extends ChangeNotifier {
  SignupHoursModel signupHoursModelObj = SignupHoursModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    signupHoursModelObj.chipviewfortyfourItemList.forEach((element) {
      element.isSelected = false;
    });
    signupHoursModelObj.chipviewfortyfourItemList[index].isSelected = value;
    notifyListeners();
  }

  void onSelectedChipView2(
    int index,
    bool value,
  ) {
    signupHoursModelObj.chipviewfiftyItemList.forEach((element) {
      element.isSelected = false;
    });
    signupHoursModelObj.chipviewfiftyItemList[index].isSelected = value;
    notifyListeners();
  }
}
