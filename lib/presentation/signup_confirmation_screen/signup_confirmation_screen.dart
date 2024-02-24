import 'package:flutter/material.dart';
import 'package:shivang_s_application2/core/app_export.dart';
import 'package:shivang_s_application2/widgets/custom_elevated_button.dart';
import 'models/signup_confirmation_model.dart';
import 'provider/signup_confirmation_provider.dart';

class SignupConfirmationScreen extends StatefulWidget {
  const SignupConfirmationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignupConfirmationScreenState createState() =>
      SignupConfirmationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupConfirmationProvider(),
      child: SignupConfirmationScreen(),
    );
  }
}

class SignupConfirmationScreenState extends State<SignupConfirmationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 33.h,
            top: 184.v,
            right: 33.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorGreenA700,
                height: 80.v,
                width: 120.h,
              ),
              SizedBox(height: 34.v),
              Text(
                "msg_you_re_all_done".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 24.v),
              SizedBox(
                width: 323.h,
                child: Text(
                  "msg_hang_tight_we".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSignupConfirmationButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignupConfirmationButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_got_it".tr,
      margin: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 54.v,
      ),
    );
  }
}
