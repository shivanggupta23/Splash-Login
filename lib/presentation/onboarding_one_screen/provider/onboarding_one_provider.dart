import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/onboarding_one_model.dart';

/// A provider class for the OnboardingOneScreen.
///
/// This provider manages the state of the OnboardingOneScreen, including the
/// current onboardingOneModelObj
class OnboardingOneProvider extends ChangeNotifier {
  OnboardingOneModel onboardingOneModelObj = OnboardingOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
