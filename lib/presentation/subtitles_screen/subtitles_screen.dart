import 'package:oci_app/presentation/root_2_page/models/root_two_item_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'controller/subtitles_controller.dart';
import 'package:flutter/material.dart';
import 'package:oci_app/core/app_export.dart';
import 'package:oci_app/widgets/app_bar/appbar_image.dart';
import 'package:oci_app/widgets/app_bar/custom_app_bar.dart';
import 'package:oci_app/widgets/custom_button.dart';

class SubtitlesScreen extends GetWidget<SubtitlesController> {

  final item = Get.arguments as RootTwoItemModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 16),
                    onTap: () {
                      onTapArrowleft();
                    }),
                height: getVerticalSize(53),
                centerTitle: true,
                title: Text( item.titleTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroySemiBold24),
                
            ),
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: getVerticalSize(250),
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      YoutubePlayer(
                                        controller: YoutubePlayerController(
                                          initialVideoId: YoutubePlayer.convertUrlToId(item.videoId)!,
                                          flags: YoutubePlayerFlags(
                                              autoPlay: true,
                                              mute: true,
                                          ),
                                        ),
                                        showVideoProgressIndicator: true,
                                      ),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 16,
                                                  right: 16,
                                                  bottom: 8),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomButton(
                                                        height:
                                                            getVerticalSize(28),
                                                        text:
                                                            "msg_lorem_ipsum_dolor"
                                                                .tr,
                                                        margin: getMargin(
                                                            left: 35,
                                                            right: 35)),
                                                  ])))
                                    ])),
                            
                            //중간
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 16, right: 16),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(323),
                                          margin: getMargin(top: 3),
                                          child: Text(
                                              item.titleTxt.value,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18)),
                                    ])),
                            
                            // 인터렉션
                            Padding(
                                padding:
                                    getPadding(left: 34, top: 17, right: 18),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(30),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgThumbsup,
                                                    height: getSize(30),
                                                    width: getSize(30)),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text("lbl_567".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium14))
                                              ])),
                                      Container(
                                          width: getHorizontalSize(41),
                                          margin: getMargin(left: 46),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgThumbsup,
                                                    height: getSize(30),
                                                    width: getSize(30)),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "lbl_dislike".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium14))
                                              ])),
                                      Container(
                                          width: getHorizontalSize(38),
                                          margin: getMargin(left: 42),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgShare30x30,
                                                    height: getSize(30),
                                                    width: getSize(30)),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text("lbl_share".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium14))
                                              ])),
                                      Container(
                                          width: getHorizontalSize(66),
                                          margin: getMargin(left: 29),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgDownload,
                                                    height: getSize(30),
                                                    width: getSize(30)),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "lbl_download".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium14))
                                              ])),
                                      Container(
                                          width: getHorizontalSize(65),
                                          margin: getMargin(left: 16),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgBookmark,
                                                    height: getSize(30),
                                                    width: getSize(30)),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "lbl_bookmark".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium14BlueA700))
                                              ]))
                                    ])),
                            Padding(
                                padding: getPadding(top: 18),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.blueGray100,
                                    indent: getHorizontalSize(16),
                                    endIndent: getHorizontalSize(16))),
                          ]))
                ]))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
