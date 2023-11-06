import 'package:oci_app/core/app_export.dart';
import 'package:oci_app/presentation/root_1_page/models/root_one_model.dart';


class RootOneController extends GetxController {
  Rx<RootOneModel> rootOneModelObj = RootOneModel().obs;

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
    rootOneModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    rootOneModelObj.value.dropdownItemList.refresh();

    //send data

    //recv data

    //refrash data

  }
}
