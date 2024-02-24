import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/login_reset_password_model.dart';

/// A provider class for the LoginResetPasswordScreen.
///
/// This provider manages the state of the LoginResetPasswordScreen, including the
/// current loginResetPasswordModelObj
class LoginResetPasswordProvider extends ChangeNotifier {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  LoginResetPasswordModel loginResetPasswordModelObj =
      LoginResetPasswordModel();

  @override
  void dispose() {
    super.dispose();
    newpasswordController.dispose();
    newpasswordController1.dispose();
  }
}
