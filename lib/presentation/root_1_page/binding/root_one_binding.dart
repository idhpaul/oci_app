import '../controller/root_one_controller.dart';
import 'package:get/get.dart';

class RootOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RootOneController());
  }
}
