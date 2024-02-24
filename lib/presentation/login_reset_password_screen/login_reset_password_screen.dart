import 'package:flutter/material.dart';
import 'package:shivang_s_application2/core/app_export.dart';
import 'package:shivang_s_application2/core/utils/validation_functions.dart';
import 'package:shivang_s_application2/widgets/custom_elevated_button.dart';
import 'package:shivang_s_application2/widgets/custom_text_form_field.dart';
import 'models/login_reset_password_model.dart';
import 'provider/login_reset_password_provider.dart';

class LoginResetPasswordScreen extends StatefulWidget {
  const LoginResetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginResetPasswordScreenState createState() =>
      LoginResetPasswordScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginResetPasswordProvider(),
      child: LoginResetPasswordScreen(),
    );
  }
}

class LoginResetPasswordScreenState extends State<LoginResetPasswordScreen> {
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
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
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
                    SizedBox(height: 90.v),
                    Text(
                      "lbl_reset_password".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 24.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_remember_your_pasword2".tr,
                            style: CustomTextStyles.titleSmall4c000000,
                          ),
                          TextSpan(
                            text: "lbl".tr,
                            style: CustomTextStyles.titleSmall4c000000,
                          ),
                          TextSpan(
                            text: "lbl_login".tr,
                            style: CustomTextStyles.titleSmallffd5715b,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 68.v),
                    Selector<LoginResetPasswordProvider,
                        TextEditingController?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.newpasswordController,
                      builder: (context, newpasswordController, child) {
                        return CustomTextFormField(
                          controller: newpasswordController,
                          hintText: "lbl_new_password".tr,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(16.h, 14.v, 10.h, 14.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLocation,
                              height: 19.v,
                              width: 15.h,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 48.v,
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_password".tr;
                            }
                            return null;
                          },
                          obscureText: true,
                        );
                      },
                    ),
                    SizedBox(height: 24.v),
                    Selector<LoginResetPasswordProvider,
                        TextEditingController?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.newpasswordController1,
                      builder: (context, newpasswordController1, child) {
                        return CustomTextFormField(
                          controller: newpasswordController1,
                          hintText: "msg_confirm_new_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(16.h, 14.v, 10.h, 14.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLocation,
                              height: 19.v,
                              width: 15.h,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 48.v,
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_password".tr;
                            }
                            return null;
                          },
                          obscureText: true,
                        );
                      },
                    ),
                    SizedBox(height: 32.v),
                    CustomElevatedButton(
                      text: "lbl_submit".tr,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
