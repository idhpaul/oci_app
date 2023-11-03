
import '../video_library_screen/widgets/videolibrary_item_widget.dart';
import 'controller/video_library_controller.dart';
import 'models/videolibrary_item_model.dart';
import 'package:flutter/material.dart';
import 'package:oci_app/core/app_export.dart';
import 'package:oci_app/widgets/app_bar/appbar_image.dart';
import 'package:oci_app/widgets/app_bar/custom_app_bar.dart';
import 'package:oci_app/widgets/custom_drop_down.dart';

class VideoLibraryScreen extends StatelessWidget {
  VideoLibraryScreen({Key? key}) : super(key: key);

  VideoLibraryController controller =
      Get.put(VideoLibraryController());
  

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 16),
                    onTap: () {
                      onTapArrowleft1();
                    }),
                centerTitle: true,
                title: Text("lbl_video_library".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroySemiBold24),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 16))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 23, right: 16, bottom: 23),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("lbl_videos".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroySemiBold18Black900)),
                            CustomDropDown(
                                width: getHorizontalSize(85),
                                focusNode: FocusNode(),
                                icon: Container(
                                    margin: getMargin(left: 8),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowdownBlueA700)),
                                hintText: "lbl_sort_by".tr,
                                items: controller.videoLibraryModelObj.value
                                    .dropdownItemList.value,
                                onChanged: (value) {
                                  controller.onSelected(value);
                                })
                          ]),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(133),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(16),
                                      crossAxisSpacing: getHorizontalSize(16)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.videoLibraryModelObj.value
                                  .videolibraryItemList.value.length,
                              itemBuilder: (context, index) {
                                VideolibraryItemModel model = controller
                                    .videoLibraryModelObj
                                    .value
                                    .videolibraryItemList
                                    .value[index];
                                return VideolibraryItemWidget(model);
                              })))
                    ])),
                    ));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
