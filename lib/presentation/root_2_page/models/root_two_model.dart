import 'package:get/get.dart';
import 'package:oci_app/core/utils/image_constant.dart';
import 'package:oci_app/data/models/selectionPopupModel/selection_popup_model.dart';
import 'root_two_item_model.dart';

class RootTwoModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<RootTwoItemModel>> videolibraryItemList = Rx([
    RootTwoItemModel(titleTxt: RxString("NewJeans Play  I Dare You Teen Vogue"), videoId: "https://www.youtube.com/watch?v=3CkI1wp8MBs", videoThumbnail: ImageConstant.imgVideoThumnail_8),
    RootTwoItemModel(titleTxt: RxString("What’s It Like Being a Foreign English Teacher in Korea   Street Interview"), videoId: "https://www.youtube.com/watch?v=R_QkVyzKF2k", videoThumbnail: ImageConstant.imgVideoThumnail_2),
    RootTwoItemModel(titleTxt: RxString("Why Korean Stadium Food DESTROYS American Stadium Food!! You’re Being Robbed!!"), videoId: "https://www.youtube.com/watch?v=h2rEeZt4mEg", videoThumbnail: ImageConstant.imgVideoThumnail_3),
    RootTwoItemModel(titleTxt: RxString("Culture Shock From Living In Korea"), videoId: "https://www.youtube.com/watch?v=WDDGFPLmnXc", videoThumbnail: ImageConstant.imgVideoThumnail_4),
    RootTwoItemModel(titleTxt: RxString("Jung Woo Sung interview South Korea's superstar actor director"), videoId: "https://www.youtube.com/watch?v=suqwJfuJH6Q", videoThumbnail: ImageConstant.imgVideoThumnail_5),
    RootTwoItemModel(titleTxt: RxString("Things foreigners should NOT do in Korea (from a Korean's perspective)"), videoId: "https://www.youtube.com/watch?v=AytS6vNg-NU", videoThumbnail: ImageConstant.imgVideoThumnail_6),
    RootTwoItemModel(titleTxt: RxString("Fed shifts into cautious policy for Dec. meeting amid  two-side risks"), videoId: "https://www.youtube.com/watch?v=L0PPl-HGmys", videoThumbnail: ImageConstant.imgVideoThumnail_7),
    RootTwoItemModel(titleTxt: RxString("Young-ha Kim Be an artist, right now!"), videoId: "https://www.youtube.com/watch?v=zRvDWVfib2c", videoThumbnail: ImageConstant.imgVideoThumnail_1),
    ]);
}
