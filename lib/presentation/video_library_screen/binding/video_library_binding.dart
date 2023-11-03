import '../controller/video_library_controller.dart';
import 'package:get/get.dart';

class VideoLibraryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoLibraryController());
  }
}
