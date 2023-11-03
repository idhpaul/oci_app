import 'controller/subtitles_controller.dart';
import 'package:flutter/material.dart';
import 'package:oci_app/core/app_export.dart';
import 'package:oci_app/widgets/app_bar/appbar_image.dart';
import 'package:oci_app/widgets/app_bar/custom_app_bar.dart';
import 'package:oci_app/widgets/custom_button.dart';

class SubtitlesScreen extends GetWidget<SubtitlesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(
                              left: 16, top: 16, right: 16, bottom: 127),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(24),
                                    leadingWidth: 40,
                                    leading: AppbarImage(
                                        height: getSize(24),
                                        width: getSize(24),
                                        svgPath:
                                            ImageConstant.imgArrowleftWhiteA700,
                                        margin: getMargin(left: 16),
                                        onTap: () {
                                          onTapArrowleft();
                                        }),
                                    actions: [
                                      AppbarImage(
                                          height: getSize(24),
                                          width: getSize(24),
                                          svgPath: ImageConstant.imgComputer,
                                          margin: getMargin(left: 16)),
                                      AppbarImage(
                                          height: getSize(24),
                                          width: getSize(24),
                                          svgPath: ImageConstant
                                              .imgOverflowmenu24x24,
                                          margin:
                                              getMargin(left: 16, right: 16))
                                    ]),
                                Spacer(),
                                Container(
                                    height: getVerticalSize(180),
                                    width: getHorizontalSize(396),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle1227,
                                              height: getVerticalSize(180),
                                              width: getHorizontalSize(396),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  margin: getMargin(
                                                      right: 8, bottom: 8),
                                                  padding: getPadding(
                                                      left: 4, right: 4),
                                                  decoration: AppDecoration
                                                      .fillBlack900a2
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder3),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_09_54".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGilroyRegular12)
                                                      ])))
                                        ]))
                              ]))),
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
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle1227,
                                          height: getVerticalSize(250),
                                          width: getHorizontalSize(428),
                                          alignment: Alignment.center),
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
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 8),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              6),
                                                                  child: Text(
                                                                      "lbl_53_07"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGilroyMedium10)),
                                                              Expanded(
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              5,
                                                                          top:
                                                                              7,
                                                                          bottom:
                                                                              7),
                                                                      child: SliderTheme(
                                                                          data: SliderThemeData(
                                                                              trackShape:
                                                                                  RoundedRectSliderTrackShape(),
                                                                              activeTrackColor: ColorConstant
                                                                                  .blueA700,
                                                                              inactiveTrackColor: ColorConstant
                                                                                  .gray400,
                                                                              thumbColor: ColorConstant
                                                                                  .blueA700,
                                                                              thumbShape:
                                                                                  RoundSliderThumbShape()),
                                                                          child: Slider(
                                                                              value: 78.84,
                                                                              min: 0.0,
                                                                              max: 100.0,
                                                                              onChanged: (value) {})))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              4,
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              6),
                                                                  child: Text(
                                                                      "lbl_10_07"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGilroyMedium10)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMinimize,
                                                                  height:
                                                                      getSize(
                                                                          24),
                                                                  width:
                                                                      getSize(
                                                                          24),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              16))
                                                            ]))
                                                  ])))
                                    ])),
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
                                              "msg_web_redesign_challenge".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18)),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlueGray900,
                                          height: getSize(24),
                                          width: getSize(24),
                                          margin:
                                              getMargin(left: 48, bottom: 34))
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 16, top: 10),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_1k_view".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14)),
                                          Container(
                                              height: getSize(4),
                                              width: getSize(4),
                                              margin: getMargin(
                                                  left: 8, top: 6, bottom: 8),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.blueGray400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              2)))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 8, top: 1),
                                              child: Text("lbl_2_day_ago".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14))
                                        ]))),
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
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 18, right: 16),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_comments_423".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyMedium16),
                                      Text("lbl_more".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroySemiBold16)
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 16, top: 19),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse740x40,
                                          height: getSize(40),
                                          width: getSize(40),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(20))),
                                      Padding(
                                          padding: getPadding(
                                              left: 8, top: 9, bottom: 11),
                                          child: Text("lbl_awesome_video".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroyRegular16))
                                    ]))),
                            Padding(
                                padding: getPadding(top: 16),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.blueGray100,
                                    indent: getHorizontalSize(16),
                                    endIndent: getHorizontalSize(16))),
                            Container(
                                height: getVerticalSize(180),
                                width: getHorizontalSize(396),
                                margin: getMargin(top: 14),
                                decoration: BoxDecoration(
                                    color: ColorConstant.black9007f)),
                            Padding(
                                padding: getPadding(top: 13),
                                child: Text("msg_web_redesign_challenge2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroySemiBold18)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 16, top: 12),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_1k_view".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14)),
                                          Container(
                                              height: getSize(4),
                                              width: getSize(4),
                                              margin: getMargin(
                                                  left: 8, top: 6, bottom: 8),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.blueGray400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              2)))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 8, top: 1),
                                              child: Text("lbl_2_day_ago".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14))
                                        ])))
                          ]))
                ]))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
