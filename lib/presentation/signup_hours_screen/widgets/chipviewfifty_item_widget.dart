import 'package:flutter/material.dart';
import 'package:shivang_s_application2/core/app_export.dart';
import '../models/chipviewfifty_item_model.dart';

// ignore: must_be_immutable
class ChipviewfiftyItemWidget extends StatelessWidget {
  ChipviewfiftyItemWidget(
    this.chipviewfiftyItemModelObj, {
    Key? key,
    this.onSelectedChipView2,
  }) : super(
          key: key,
        );

  ChipviewfiftyItemModel chipviewfiftyItemModelObj;

  Function(bool)? onSelectedChipView2;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewfiftyItemModelObj.amam!,
        style: TextStyle(
          color: theme.colorScheme.primaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Be Vietnam',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (chipviewfiftyItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primaryContainer,
      selectedColor: appTheme.orange200,
      shape: (chipviewfiftyItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView2?.call(value);
      },
    );
  }
}
