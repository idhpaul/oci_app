import 'package:oci_app/core/app_export.dart';

import 'package:oci_app/presentation/root_2_page/models/root_two_item_model.dart';
import 'package:oci_app/presentation/subtitles_screen/models/subtitles_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_subtitle/flutter_subtitle.dart';

import 'package:oci_app/data/sample/sample_srt.dart';

class SubtitlesController extends GetxController {
  Rx<SubtitlesModel> subtitlesModelObj = SubtitlesModel().obs;

  final item = Get.arguments as RootTwoItemModel;

  late YoutubePlayerController ytController;
  late SubtitleController subtitleController;
  
  @override
  Future<void> onInit() async {
    super.onInit();
    
    subtitleController = SubtitleController.string(srt_raw_text, format: SubtitleFormat.srt);

    ytController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(item.videoId)!,
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: true,
        ));


  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
