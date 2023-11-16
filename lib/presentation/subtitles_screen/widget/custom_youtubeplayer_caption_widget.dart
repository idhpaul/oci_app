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
  Rx<String> currentCaption = ''.obs;

  @override
  void initState() {
    super.initState();

    widget.ytController.addListener(() {
      captionsSync();
    });
  }

  @override
  void dispose() {
    super.dispose();

    widget.ytController.removeListener(() {
      captionsSync();
    });
  }

  void captionsSync() {
    currentCaption.value = widget.stController.textFromMilliseconds(
        widget.ytController.value.position.inMilliseconds,
        widget.stController.subtitles);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        height: getVerticalSize(250),
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          // video player filed
          YoutubePlayer(
            controller: widget.ytController,
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
