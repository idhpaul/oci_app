import 'package:get/get.dart';

class RootTwoItemModel {

  RootTwoItemModel({
    this.newTxt,
    required this.titleTxt,
    required this.videoId,
  });

  Rx<String>? newTxt = Rx("");

  Rx<String> titleTxt = Rx("");

  String videoId = "";
}
