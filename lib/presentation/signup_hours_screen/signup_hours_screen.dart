import 'package:flutter/material.dart';
import 'package:shivang_s_application2/core/app_export.dart';
import 'package:shivang_s_application2/widgets/custom_elevated_button.dart';
import '../signup_hours_screen/widgets/chipviewfifty_item_widget.dart';
import '../signup_hours_screen/widgets/chipviewfortyfour_item_widget.dart';
import 'models/chipviewfifty_item_model.dart';
import 'models/chipviewfortyfour_item_model.dart';
import 'models/signup_hours_model.dart';
import 'provider/signup_hours_provider.dart';

class SignupHoursScreen extends StatefulWidget {
  const SignupHoursScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignupHoursScreenState createState() => SignupHoursScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupHoursProvider(),
      child: SignupHoursScreen(),
    );
  }
}

class SignupHoursScreenState extends State<SignupHoursScreen> {
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
                "lbl_signup_4_of_4".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 5.v),
              Text(
                "lbl_business_hours".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 24.v),
              Container(
                width: 314.h,
                margin: EdgeInsets.only(right: 15.h),
                child: Text(
                  "msg_choose_the_hours".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 36.v),
              _buildChipViewFortyFour(context),
              SizedBox(height: 30.v),
              _buildChipViewFifty(context),
              Spacer(),
              SizedBox(height: 16.v),
              _buildRowFiftyTwo(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipViewFortyFour(BuildContext context) {
    return Consumer<SignupHoursProvider>(
      builder: (context, provider, child) {
        return Wrap(
          runSpacing: 12.v,
          spacing: 12.h,
          children: List<Widget>.generate(
            provider.signupHoursModelObj.chipviewfortyfourItemList.length,
            (index) {
              ChipviewfortyfourItemModel model =
                  provider.signupHoursModelObj.chipviewfortyfourItemList[index];

              return ChipviewfortyfourItemWidget(
                model,
                onSelectedChipView1: (value) {
                  provider.onSelectedChipView1(index, value);
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildChipViewFifty(BuildContext context) {
    return Consumer<SignupHoursProvider>(
      builder: (context, provider, child) {
        return Wrap(
          runSpacing: 10.v,
          spacing: 10.h,
          children: List<Widget>.generate(
            provider.signupHoursModelObj.chipviewfiftyItemList.length,
            (index) {
              ChipviewfiftyItemModel model =
                  provider.signupHoursModelObj.chipviewfiftyItemList[index];

              return ChipviewfiftyItemWidget(
                model,
                onSelectedChipView2: (value) {
                  provider.onSelectedChipView2(index, value);
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRowFiftyTwo(BuildContext context) {
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
          text: "lbl_signup".tr,
        ),
      ],
    );
  }
}
