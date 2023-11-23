import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:oci_app/core/app_export.dart';
import 'package:oci_app/data/apiClient/api_client.dart';
import 'package:oci_app/data/sample/sample_srt.dart';
import 'package:oci_app/presentation/root_2_page/models/root_two_item_model.dart';
import 'package:oci_app/widgets/custom_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_subtitle/flutter_subtitle.dart';

class CustomYoutubePlayer extends StatefulWidget {
  CustomYoutubePlayer({
    required this.item,
  });

  RootTwoItemModel item;

  @override
  _CustomYoutubePlayerState createState() => _CustomYoutubePlayerState();
}

class _CustomYoutubePlayerState extends State<CustomYoutubePlayer> {

  ApiClient apiClient = Get.find<ApiClient>();
  
  late YoutubePlayerController ytController;
  late SubtitleController stController;

  String initCaption = default_raw_caption;
  Rx<String> currentCaption = ''.obs;

  @override
  void initState() {
    super.initState();

    ytController = YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(widget.item.videoUrl)!,
          flags: YoutubePlayerFlags(
            autoPlay: true,
            mute: false,
            enableCaption: false,
          ));
  
    Future.wait([
      apiClient.getVideo(widget.item.videoId!.value).then((value){
        print(utf8.decode(value.bodyBytes));
        
        var jsonResponse = jsonDecode(utf8.decode(value.bodyBytes)) as Map<String, dynamic>;
        String englishCaption = jsonResponse['captions'][0];

        var index = englishCaption.indexOf(':');
        String caption = englishCaption.substring(index+1);

        initCaption = caption;
      })
    ]).then((value) {
      stController = SubtitleController.string(initCaption, format: SubtitleFormat.srt);

      ytController.addListener(() {
        captionsSync();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    ytController.removeListener(() {
      captionsSync();
    });
  }

  void captionsSync() {
    currentCaption.value = stController.textFromMilliseconds(
        ytController.value.position.inMilliseconds,
        stController.subtitles);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        height: getVerticalSize(250),
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          // video player filed
          YoutubePlayer(
            controller: ytController,
            bottomActions: [
              CurrentPosition(),
              ProgressBar(isExpanded: true),
            ],
            showVideoProgressIndicator: true,
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.6),
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Stack(
                  children: [
                    Text(
                      currentCaption.value,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // open caption(OC) filed
          // Align(
          //     alignment: Alignment.bottomCenter,
          //     child: Padding(
          //         padding: getPadding(left: 16, right: 16, bottom: 8),
          //         child: Column(
          //             mainAxisSize: MainAxisSize.min,
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             children: [
          //               CustomButton(
          //                 text: currentCaption.value,
          //               )
          //             ])))
        ])));
  }
}
