import 'chipviewfortyfour_item_model.dart';
import 'chipviewfifty_item_model.dart';
import '../../../core/app_export.dart';

class SignupHoursModel {
  List<ChipviewfortyfourItemModel> chipviewfortyfourItemList =
      List.generate(7, (index) => ChipviewfortyfourItemModel());

  List<ChipviewfiftyItemModel> chipviewfiftyItemList =
      List.generate(5, (index) => ChipviewfiftyItemModel());
}
