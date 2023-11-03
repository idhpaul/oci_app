import 'package:oci_app/core/app_export.dart';
import 'package:oci_app/presentation/video_library_screen/models/video_library_model.dart';

class VideoLibraryController extends GetxController {
  Rx<VideoLibraryModel> videoLibraryModelObj = VideoLibraryModel().obs;

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
