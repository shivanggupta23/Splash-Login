import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signup_confirmation_model.dart';

/// A provider class for the SignupConfirmationScreen.
///
/// This provider manages the state of the SignupConfirmationScreen, including the
/// current signupConfirmationModelObj
class SignupConfirmationProvider extends ChangeNotifier {
  SignupConfirmationModel signupConfirmationModelObj =
      SignupConfirmationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
