import 'package:flutter/material.dart';
import 'package:shivang_s_application2/core/app_export.dart';
import 'package:shivang_s_application2/widgets/custom_elevated_button.dart';
import 'package:shivang_s_application2/widgets/custom_icon_button.dart';
import 'package:shivang_s_application2/widgets/custom_text_form_field.dart';
import 'models/signup_verification_one_model.dart';
import 'provider/signup_verification_one_provider.dart';

class SignupVerificationOneScreen extends StatefulWidget {
  const SignupVerificationOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignupVerificationOneScreenState createState() =>
      SignupVerificationOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupVerificationOneProvider(),
      child: SignupVerificationOneScreen(),
    );
  }
}

class SignupVerificationOneScreenState
    extends State<SignupVerificationOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 37.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_farmereats".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 32.v),
              Text(
                "lbl_signup_3_of_4".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 5.v),
              Text(
                "lbl_verification".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 24.v),
              Container(
                width: 309.h,
                margin: EdgeInsets.only(right: 20.h),
                child: Text(
                  "msg_attached_proof_of".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 35.v),
              _buildSixty(context),
              SizedBox(height: 40.v),
              Selector<SignupVerificationOneProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.weburlController,
                builder: (context, weburlController, child) {
                  return CustomTextFormField(
                    controller: weburlController,
                    hintText: "msg_usda_registration_pdf".tr,
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 48.v,
                    ),
                    contentPadding: EdgeInsets.only(
                      left: 16.h,
                      top: 13.v,
                      bottom: 13.v,
                    ),
                  );
                },
              ),
              Spacer(),
              SizedBox(height: 16.v),
              _buildFortySix(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 19.v,
            bottom: 12.v,
          ),
          child: Text(
            "msg_attach_proof_of".tr,
            style: CustomTextStyles.bodyMediumPrimaryContainer,
          ),
        ),
        CustomIconButton(
          height: 53.adaptSize,
          width: 53.adaptSize,
          padding: EdgeInsets.all(14.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgCamera,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 18.v,
          width: 26.h,
          margin: EdgeInsets.symmetric(vertical: 17.v),
        ),
        CustomElevatedButton(
          width: 226.h,
          text: "lbl_submit".tr,
        ),
      ],
    );
  }
}
