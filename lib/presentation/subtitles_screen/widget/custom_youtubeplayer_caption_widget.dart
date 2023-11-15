import 'package:flutter/material.dart';

import 'package:oci_app/core/app_export.dart';
import 'package:oci_app/widgets/custom_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_subtitle/flutter_subtitle.dart';

class CustomYoutubePlayer extends StatefulWidget {
  CustomYoutubePlayer({
    required this.ytController,
    required this.stController,
  });

  YoutubePlayerController ytController;
  SubtitleController stController;

  @override
  _CustomYoutubePlayerState createState() => _CustomYoutubePlayerState();
}

class _CustomYoutubePlayerState extends State<CustomYoutubePlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: getVerticalSize(250),
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          // video player filed
          YoutubePlayer(
            controller: widget.ytController,
            bottomActions: [
              CurrentPosition(),
              //PlayPauseButton(),
              //PlaybackSpeedButton(),
              ProgressBar(isExpanded: true),
            ],
            showVideoProgressIndicator: true,
          ),

          // open caption(OC) filed
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: getPadding(left: 16, right: 16, bottom: 8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _printTime(),
                      ])))
        ]));
  }

  Widget _printTime() {
    var currentCaption = ''.obs;

    widget.ytController.addListener(() {
      var cc = widget.stController.textFromMilliseconds(
          widget.ytController.value.position.inMilliseconds,
          widget.stController.subtitles);

      print(cc);
      currentCaption = cc.obs;
    });

    return Obx(() => 
      Text(currentCaption.value)
    );
    
    
  }
}
