import 'package:flutter/material.dart';
import 'package:shivang_s_application2/core/app_export.dart';
import '../models/chipviewfortyfour_item_model.dart';

// ignore: must_be_immutable
class ChipviewfortyfourItemWidget extends StatelessWidget {
  ChipviewfortyfourItemWidget(
    this.chipviewfortyfourItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  ChipviewfortyfourItemModel chipviewfortyfourItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 6.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewfortyfourItemModelObj.m!,
        style: TextStyle(
          color: (chipviewfortyfourItemModelObj.isSelected ?? false)
              ? appTheme.whiteA700
              : theme.colorScheme.primaryContainer.withOpacity(0.3),
          fontSize: 16.fSize,
          fontFamily: 'Be Vietnam',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (chipviewfortyfourItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.whiteA700,
      selectedColor: theme.colorScheme.primary,
      shape: (chipviewfortyfourItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.primaryContainer.withOpacity(0.3),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
