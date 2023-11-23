import 'package:get/get.dart';

class RootTwoItemModel {

  RootTwoItemModel({
    this.videoId,
    required this.titleTxt,
    required this.videoUrl,
    required this.videoThumbnail
  });

  Rx<String>? videoId = Rx("");

  Rx<String> titleTxt = Rx("");

  String videoUrl = "";

  String videoThumbnail = "";
}
