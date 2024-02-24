import '../../../core/app_export.dart';

/// This class is used in the [chipviewfortyfour_item_widget] screen.
class ChipviewfortyfourItemModel {
  ChipviewfortyfourItemModel({
    this.m,
    this.isSelected,
  }) {
    m = m ?? "M";
    isSelected = isSelected ?? false;
  }

  String? m;

  bool? isSelected;
}
