import '../controller/root_screen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RootBinding.

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RootScreenController());
  }
}
