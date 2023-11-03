import 'package:get/get.dart';
import 'package:oci_app/data/models/selectionPopupModel/selection_popup_model.dart';
import 'videolibrary_item_model.dart';

class VideoLibraryModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<VideolibraryItemModel>> videolibraryItemList =
      Rx(List.generate(8, (index) => VideolibraryItemModel()));
}
