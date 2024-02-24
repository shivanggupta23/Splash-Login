import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/login_otp_model.dart';

/// A provider class for the LoginOtpScreen.
///
/// This provider manages the state of the LoginOtpScreen, including the
/// current loginOtpModelObj
class LoginOtpProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  LoginOtpModel loginOtpModelObj = LoginOtpModel();

  @override
  void dispose() {
    super.dispose();
  }
}
