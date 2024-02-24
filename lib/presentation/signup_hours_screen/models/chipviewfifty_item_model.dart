import '../../../core/app_export.dart';

/// This class is used in the [chipviewfifty_item_widget] screen.
class ChipviewfiftyItemModel {
  ChipviewfiftyItemModel({
    this.amam,
    this.isSelected,
  }) {
    amam = amam ?? "8:00am - 10:00am";
    isSelected = isSelected ?? false;
  }

  String? amam;

  bool? isSelected;
}
