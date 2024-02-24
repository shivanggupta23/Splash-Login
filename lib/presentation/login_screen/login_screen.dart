import 'package:flutter/material.dart';
import 'package:shivang_s_application2/core/app_export.dart';
import 'package:shivang_s_application2/core/utils/validation_functions.dart';
import 'package:shivang_s_application2/widgets/custom_elevated_button.dart';
import 'package:shivang_s_application2/widgets/custom_text_form_field.dart';
import 'models/login_model.dart';
import 'provider/login_provider.dart';
import 'package:shivang_s_application2/domain/facebookauth/facebook_auth_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 29.h, vertical: 37.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_farmereats".tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 90.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_welcome_back".tr,
                                      style: theme.textTheme.headlineLarge)),
                              SizedBox(height: 22.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_new_here".tr,
                                            style: CustomTextStyles
                                                .titleSmall4c000000),
                                        TextSpan(
                                            text: "lbl_create_account".tr,
                                            style: CustomTextStyles
                                                .titleSmallffd5715b)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 69.v),
                              Selector<LoginProvider, TextEditingController?>(
                                  selector: (context, provider) =>
                                      provider.emailController,
                                  builder: (context, emailController, child) {
                                    return CustomTextFormField(
                                        controller: emailController,
                                        hintText: "lbl_email_address".tr,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                16.h, 16.v, 10.h, 16.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgClock,
                                                height: 15.adaptSize,
                                                width: 15.adaptSize)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 48.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_email"
                                                .tr;
                                          }
                                          return null;
                                        });
                                  }),
                              SizedBox(height: 24.v),
                              Consumer<LoginProvider>(
                                  builder: (context, provider, child) {
                                return CustomTextFormField(
                                    controller: provider.passwordController,
                                    hintText: "lbl_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.h, 14.v, 10.h, 14.v),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLocation,
                                            height: 19.v,
                                            width: 15.h)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 48.v),
                                    suffix: InkWell(
                                        onTap: () {
                                          provider.changePasswordVisibility();
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                30.h, 16.v, 16.h, 10.v),
                                            child: Text("lbl_forgot".tr,
                                                style: TextStyle(
                                                    color: Color(0XFFD5715B),
                                                    fontSize: 14.fSize,
                                                    fontFamily: 'Be Vietnam',
                                                    fontWeight:
                                                        FontWeight.w400)))),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 48.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: provider.isShowPassword);
                              }),
                              SizedBox(height: 32.v),
                              CustomElevatedButton(text: "lbl_login".tr),
                              SizedBox(height: 33.v),
                              Text("lbl_or_login_with".tr,
                                  style: theme.textTheme.labelMedium),
                              SizedBox(height: 30.v),
                              _buildSocialMediaIcons(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildSocialMediaIcons(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 52.v,
          width: 96.h,
          padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 10.v),
          decoration: AppDecoration.outlineBlack
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
          child: CustomImageView(
              imagePath: ImageConstant.imgIcons8Google1,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center)),
      Container(
          height: 52.v,
          width: 96.h,
          padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 10.v),
          decoration: AppDecoration.outlineBlack
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
          child: CustomImageView(
              imagePath: ImageConstant.imgIcons8AppleLogo,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center)),
      Container(
          height: 52.v,
          width: 96.h,
          padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 10.v),
          decoration: AppDecoration.outlineBlack
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
          child: CustomImageView(
              imagePath: ImageConstant.imgFacebook,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapImgFacebook(context);
              }))
    ]);
  }

  onTapImgFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
