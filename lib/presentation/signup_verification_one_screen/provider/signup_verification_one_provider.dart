import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signup_verification_one_model.dart';

/// A provider class for the SignupVerificationOneScreen.
///
/// This provider manages the state of the SignupVerificationOneScreen, including the
/// current signupVerificationOneModelObj
class SignupVerificationOneProvider extends ChangeNotifier {
  TextEditingController weburlController = TextEditingController();

  SignupVerificationOneModel signupVerificationOneModelObj =
      SignupVerificationOneModel();

  @override
  void dispose() {
    super.dispose();
    weburlController.dispose();
  }
}
