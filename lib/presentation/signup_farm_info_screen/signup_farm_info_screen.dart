import 'package:flutter/material.dart';
import 'package:shivang_s_application2/core/app_export.dart';
import 'package:shivang_s_application2/core/utils/validation_functions.dart';
import 'package:shivang_s_application2/widgets/custom_drop_down.dart';
import 'package:shivang_s_application2/widgets/custom_elevated_button.dart';
import 'package:shivang_s_application2/widgets/custom_text_form_field.dart';
import 'models/signup_farm_info_model.dart';
import 'provider/signup_farm_info_provider.dart';

class SignupFarmInfoScreen extends StatefulWidget {
  const SignupFarmInfoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignupFarmInfoScreenState createState() => SignupFarmInfoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupFarmInfoProvider(),
      child: SignupFarmInfoScreen(),
    );
  }
}

class SignupFarmInfoScreenState extends State<SignupFarmInfoScreen> {
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
                    SizedBox(height: 32.v),
                    Text(
                      "lbl_signup_2_of_4".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "lbl_farm_info".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 37.v),
                    _buildFarmerEats(context),
                    SizedBox(height: 24.v),
                    _buildSignupOfFour(context),
                    SizedBox(height: 24.v),
                    _buildFarmInfo(context),
                    SizedBox(height: 24.v),
                    _buildName(context),
                    SizedBox(height: 24.v),
                    _buildStreetAddress(context),
                    Spacer(),
                    SizedBox(height: 16.v),
                    _buildFortyNine(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFarmerEats(BuildContext context) {
    return Selector<SignupFarmInfoProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.farmerEatsController,
      builder: (context, farmerEatsController, child) {
        return CustomTextFormField(
          controller: farmerEatsController,
          hintText: "lbl_business_name".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 10.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgSort,
              height: 15.adaptSize,
              width: 15.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSignupOfFour(BuildContext context) {
    return Selector<SignupFarmInfoProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.signupOfFourController,
      builder: (context, signupOfFourController, child) {
        return CustomTextFormField(
          controller: signupOfFourController,
          hintText: "lbl_informal_name".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 10.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 15.adaptSize,
              width: 15.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFarmInfo(BuildContext context) {
    return Selector<SignupFarmInfoProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.farmInfoController,
      builder: (context, farmInfoController, child) {
        return CustomTextFormField(
          controller: farmInfoController,
          hintText: "lbl_street_address".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 10.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgHome,
              height: 16.v,
              width: 15.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Selector<SignupFarmInfoProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.nameController,
      builder: (context, nameController, child) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_city".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 15.v, 10.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgLinkedin,
              height: 18.v,
              width: 15.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Selector<SignupFarmInfoProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.fortyEightController,
      builder: (context, fortyEightController, child) {
        return CustomTextFormField(
          width: 188.h,
          controller: fortyEightController,
          hintText: "lbl_enter_zipcode".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 13.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStreetAddress(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Selector<SignupFarmInfoProvider, SignupFarmInfoModel?>(
          selector: (
            context,
            provider,
          ) =>
              provider.signupFarmInfoModelObj,
          builder: (context, signupFarmInfoModelObj, child) {
            return CustomDropDown(
              width: 126.h,
              icon: Container(
                margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    1.h,
                  ),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 13.v,
                  width: 19.h,
                ),
              ),
              hintText: "lbl_state".tr,
              items: signupFarmInfoModelObj?.dropdownItemList ?? [],
              onChanged: (value) {
                context.read<SignupFarmInfoProvider>().onSelected(value);
              },
            );
          },
        ),
        _buildFortyEight(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      width: 226.h,
      text: "lbl_continue".tr,
    );
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 18.v,
          width: 26.h,
          margin: EdgeInsets.symmetric(vertical: 17.v),
        ),
        _buildContinue(context),
      ],
    );
  }
}
