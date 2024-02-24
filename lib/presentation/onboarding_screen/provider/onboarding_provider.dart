import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/onboarding_model.dart';

/// A provider class for the OnboardingScreen.
///
/// This provider manages the state of the OnboardingScreen, including the
/// current onboardingModelObj

// ignore_for_file: must_be_immutable
class OnboardingProvider extends ChangeNotifier {
  OnboardingModel onboardingModelObj = OnboardingModel();

  @override
  void dispose() {
    super.dispose();
  }
}
