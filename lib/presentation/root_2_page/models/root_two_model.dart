import 'package:get/get.dart';
import 'package:oci_app/data/models/selectionPopupModel/selection_popup_model.dart';
import 'root_two_item_model.dart';

class RootTwoModel {
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

  Rx<List<RootTwoItemModel>> videolibraryItemList = Rx([
    RootTwoItemModel(titleTxt: RxString("Video 1"), videoId: "https://www.youtube.com/watch?v=iqaYk-vPUMw"),
    RootTwoItemModel(titleTxt: RxString("Video 2"), videoId: "https://www.youtube.com/watch?v=iqaYk-vPUMw"),
    RootTwoItemModel(titleTxt: RxString("Video 3"), videoId: "https://www.youtube.com/watch?v=iqaYk-vPUMw"),
    RootTwoItemModel(titleTxt: RxString("Video 4"), videoId: "https://www.youtube.com/watch?v=iqaYk-vPUMw"),
    RootTwoItemModel(titleTxt: RxString("Video 5"), videoId: "https://www.youtube.com/watch?v=iqaYk-vPUMw"),
    RootTwoItemModel(titleTxt: RxString("Video 6"), videoId: "https://www.youtube.com/watch?v=iqaYk-vPUMw"),
    RootTwoItemModel(titleTxt: RxString("Video 7"), videoId: "https://www.youtube.com/watch?v=iqaYk-vPUMw"),
    RootTwoItemModel(titleTxt: RxString("Video 8"), videoId: "https://www.youtube.com/watch?v=iqaYk-vPUMw"),
    ]);
}
