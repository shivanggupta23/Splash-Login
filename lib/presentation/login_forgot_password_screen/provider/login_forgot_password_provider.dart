import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/login_forgot_password_model.dart';

/// A provider class for the LoginForgotPasswordScreen.
///
/// This provider manages the state of the LoginForgotPasswordScreen, including the
/// current loginForgotPasswordModelObj
class LoginForgotPasswordProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();

  LoginForgotPasswordModel loginForgotPasswordModelObj =
      LoginForgotPasswordModel();

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }
}
