import '../controller/subtitles_controller.dart';
import 'package:get/get.dart';

class SubtitlesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubtitlesController());
  }
}
