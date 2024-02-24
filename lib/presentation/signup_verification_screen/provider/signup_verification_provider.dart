import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signup_verification_model.dart';

/// A provider class for the SignupVerificationScreen.
///
/// This provider manages the state of the SignupVerificationScreen, including the
/// current signupVerificationModelObj
class SignupVerificationProvider extends ChangeNotifier {
  SignupVerificationModel signupVerificationModelObj =
      SignupVerificationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
