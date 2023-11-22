import '../controller/root_two_controller.dart';
import '../models/root_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:oci_app/core/app_export.dart';

// ignore: must_be_immutable
class RootTwoItemWidget extends StatelessWidget {
  RootTwoItemWidget({
    required this.videolibraryItemModelObj,
    this.onTap,
  });

  RootTwoItemModel videolibraryItemModelObj;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getVerticalSize(
            105,
          ),
          width: getHorizontalSize(
            190,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                onTap: onTap,
                imagePath: videolibraryItemModelObj.videoThumbnail,
                height: getVerticalSize(
                  105,
                ),
                width: getHorizontalSize(
                  190,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    5,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            top: 8,
          ),
          child: Obx(
            () => Text(
              videolibraryItemModelObj.titleTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroyMedium16Bluegray800,
            ),
          ),
        ),
      ],
    );
  }
}
