import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signup_farm_info_model.dart';

/// A provider class for the SignupFarmInfoScreen.
///
/// This provider manages the state of the SignupFarmInfoScreen, including the
/// current signupFarmInfoModelObj
class SignupFarmInfoProvider extends ChangeNotifier {
  TextEditingController farmerEatsController = TextEditingController();

  TextEditingController signupOfFourController = TextEditingController();

  TextEditingController farmInfoController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController fortyEightController = TextEditingController();

  SignupFarmInfoModel signupFarmInfoModelObj = SignupFarmInfoModel();

  @override
  void dispose() {
    super.dispose();
    farmerEatsController.dispose();
    signupOfFourController.dispose();
    farmInfoController.dispose();
    nameController.dispose();
    fortyEightController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in signupFarmInfoModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
