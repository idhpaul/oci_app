import 'package:flutter_html/flutter_html.dart';
import 'package:oci_app/presentation/root_1_page/controller/root_one_controller.dart';

import 'package:flutter/material.dart';
import 'package:oci_app/core/app_export.dart';
import 'package:oci_app/widgets/app_bar/appbar_image.dart';
import 'package:oci_app/widgets/app_bar/custom_app_bar.dart';
import 'package:oci_app/widgets/custom_button.dart';
import 'package:oci_app/widgets/custom_drop_down.dart';
import 'package:oci_app/data/sampleText/sample_text.dart';

// ignore_for_file: must_be_immutable
class RootOnePage extends StatelessWidget {
  RootOnePage({Key? key}) : super(key: key);

  RootOneController controller = Get.put(RootOneController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
            height: getVerticalSize(53),
            centerTitle: true,
            title: Text("lbl_page1".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroySemiBold24),
            ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 24,
            right: 16,
            bottom: 24,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Container(
                    margin: EdgeInsets.all(4),
                    width: getHorizontalSize(
                      396,
                    ),
                    decoration: AppDecoration.outlineGray70011,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomAppBar(
                          height: getVerticalSize(
                            62,
                          ),
                          title: Padding(
                            padding: getPadding(
                              left: 16,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "lbl_page1_content_title".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroySemiBold16Bluegray900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            330,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 0,
                            right: 49,
                            bottom: 19
                          ),
                          child: Html(
                            data: html_code_content1,
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 10,
                          ),
                          padding: getPadding(
                            left: 10,
                            top: 8,
                            right: 10,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.outlineBluegray100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomDropDown(
                                width: getHorizontalSize(100),
                                focusNode: FocusNode(),
                                hintText: "lbl_sort_by".tr,
                                items: controller.rootOneModelObj.value.dropdownItemList.value,
                                onChanged: (value) {
                                  controller.onSelected(value);
                                }),
                              CustomButton(
                                width: getHorizontalSize(20),
                                text:"lbl_translate".tr,
                                margin: getMargin(
                                  left: 5,
                                  right: 5),
                                onTap: () => print("page 1 translate button clicked!"),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: Container(
                    margin: EdgeInsets.all(4),
                    width: getHorizontalSize(
                      396,
                    ),
                    decoration: AppDecoration.outlineGray70011,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomAppBar(
                          height: getVerticalSize(
                            62,
                          ),
                          title: Padding(
                            padding: getPadding(
                              left: 16,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "lbl_page1_content_title".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroySemiBold16Bluegray900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            330,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 0,
                            right: 49,
                            bottom: 19
                          ),
                          child: Html(
                            data: html_code_content2,
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 10,
                          ),
                          padding: getPadding(
                            left: 10,
                            top: 8,
                            right: 10,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.outlineBluegray100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomDropDown(
                                width: getHorizontalSize(100),
                                focusNode: FocusNode(),
                                hintText: "lbl_sort_by".tr,
                                items: controller.rootOneModelObj.value.dropdownItemList.value,
                                onChanged: (value) {
                                  controller.onSelected(value);
                                }),
                              CustomButton(
                                width: getHorizontalSize(20),
                                text:"lbl_translate".tr,
                                margin: getMargin(
                                  left: 5,
                                  right: 5),
                                onTap: () => print("page 1 translate button clicked!"),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: Container(
                    margin: EdgeInsets.all(4),
                    width: getHorizontalSize(
                      396,
                    ),
                    decoration: AppDecoration.outlineGray70011,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomAppBar(
                          height: getVerticalSize(
                            62,
                          ),
                          title: Padding(
                            padding: getPadding(
                              left: 16,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "lbl_page1_content_title".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroySemiBold16Bluegray900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            330,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 0,
                            right: 49,
                            bottom: 19
                          ),
                          child: Html(
                            data: html_code_content3,
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 10,
                          ),
                          padding: getPadding(
                            left: 10,
                            top: 8,
                            right: 10,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.outlineBluegray100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomDropDown(
                                width: getHorizontalSize(100),
                                focusNode: FocusNode(),
                                hintText: "lbl_sort_by".tr,
                                items: controller.rootOneModelObj.value.dropdownItemList.value,
                                onChanged: (value) {
                                  controller.onSelected(value);
                                }),
                              CustomButton(
                                width: getHorizontalSize(20),
                                text:"lbl_translate".tr,
                                margin: getMargin(
                                  left: 5,
                                  right: 5),
                                onTap: () => print("page 1 translate button clicked!"),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
