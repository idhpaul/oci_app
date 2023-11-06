import 'package:get/get.dart';
import 'package:oci_app/data/models/selectionPopupModel/selection_popup_model.dart';

class RootOneModel {

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Eng",
      value: "en_US",
    ),
    SelectionPopupModel(
      id: 2,
      title: "Kor",
      value: "ko_KR",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Vit",
      value: "vi_VT",
    )
  ]);

}
