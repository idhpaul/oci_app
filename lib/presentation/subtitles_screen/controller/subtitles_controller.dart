import 'package:oci_app/core/app_export.dart';
import 'package:oci_app/presentation/subtitles_screen/models/subtitles_model.dart';

class SubtitlesController extends GetxController {
  Rx<SubtitlesModel> subtitlesModelObj = SubtitlesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
