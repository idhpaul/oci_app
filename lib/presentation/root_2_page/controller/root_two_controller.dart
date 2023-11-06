import 'package:oci_app/core/app_export.dart';
import 'package:oci_app/presentation/root_2_page/models/root_two_model.dart';

class RootTwoController extends GetxController {
  Rx<RootTwoModel> videoLibraryModelObj = RootTwoModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    videoLibraryModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    videoLibraryModelObj.value.dropdownItemList.refresh();
  }
}
