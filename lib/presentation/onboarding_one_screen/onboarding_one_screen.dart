import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shivang_s_application2/core/app_export.dart';
import 'package:shivang_s_application2/widgets/custom_elevated_button.dart';
import 'models/onboarding_one_model.dart';
import 'provider/onboarding_one_provider.dart';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingOneScreenState createState() => OnboardingOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingOneProvider(),
      child: OnboardingOneScreen(),
    );
  }
}

class OnboardingOneScreenState extends State<OnboardingOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 377.v,
                width: 390.h,
              ),
              SizedBox(height: 18.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 53.h,
                  vertical: 33.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder49,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_convenient".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 39.v),
                    SizedBox(
                      width: 283.h,
                      child: Text(
                        "msg_our_team_of_delivery".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 43.v),
                    SizedBox(
                      height: 7.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 8,
                          activeDotColor: theme.colorScheme.primaryContainer,
                          dotColor: theme.colorScheme.primaryContainer,
                          dotHeight: 7.v,
                          dotWidth: 7.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 60.v),
                    CustomElevatedButton(
                      height: 60.v,
                      text: "msg_join_the_movement".tr,
                      margin: EdgeInsets.symmetric(horizontal: 23.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                    ),
                    SizedBox(height: 18.v),
                    Text(
                      "lbl_login".tr,
                      style:
                          CustomTextStyles.titleSmallPrimaryContainer.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(height: 6.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
