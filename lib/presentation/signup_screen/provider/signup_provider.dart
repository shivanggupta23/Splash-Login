import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signup_model.dart';

/// A provider class for the SignupScreen.
///
/// This provider manages the state of the SignupScreen, including the
/// current signupModelObj

// ignore_for_file: must_be_immutable
class SignupProvider extends ChangeNotifier {
  TextEditingController fullNameFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController phoneNumberFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController confirmPasswordFieldController =
      TextEditingController();

  SignupModel signupModelObj = SignupModel();

  @override
  void dispose() {
    super.dispose();
    fullNameFieldController.dispose();
    emailFieldController.dispose();
    phoneNumberFieldController.dispose();
    passwordFieldController.dispose();
    confirmPasswordFieldController.dispose();
  }
}
