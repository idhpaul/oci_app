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
    RootTwoItemModel(videoId: RxString("1"),titleTxt: RxString("NewJeans Play  I Dare You Teen Vogue"), videoUrl: "https://www.youtube.com/watch?v=3CkI1wp8MBs", videoThumbnail: ImageConstant.imgVideoThumnail_8),
    RootTwoItemModel(videoId: RxString("2"),titleTxt: RxString("What’s It Like Being a Foreign English Teacher in Korea   Street Interview"), videoUrl: "https://www.youtube.com/watch?v=R_QkVyzKF2k", videoThumbnail: ImageConstant.imgVideoThumnail_2),
    RootTwoItemModel(videoId: RxString("3"),titleTxt: RxString("Why Korean Stadium Food DESTROYS American Stadium Food!! You’re Being Robbed!!"), videoUrl: "https://www.youtube.com/watch?v=h2rEeZt4mEg", videoThumbnail: ImageConstant.imgVideoThumnail_3),
    RootTwoItemModel(videoId: RxString("4"),titleTxt: RxString("Culture Shock From Living In Korea"), videoUrl: "https://www.youtube.com/watch?v=WDDGFPLmnXc", videoThumbnail: ImageConstant.imgVideoThumnail_4),
    RootTwoItemModel(videoId: RxString("5"),titleTxt: RxString("Jung Woo Sung interview South Korea's superstar actor director"), videoUrl: "https://www.youtube.com/watch?v=suqwJfuJH6Q", videoThumbnail: ImageConstant.imgVideoThumnail_5),
    RootTwoItemModel(videoId: RxString("6"),titleTxt: RxString("Things foreigners should NOT do in Korea (from a Korean's perspective)"), videoUrl: "https://www.youtube.com/watch?v=AytS6vNg-NU", videoThumbnail: ImageConstant.imgVideoThumnail_6),
    RootTwoItemModel(videoId: RxString("7"),titleTxt: RxString("Fed shifts into cautious policy for Dec. meeting amid  two-side risks"), videoUrl: "https://www.youtube.com/watch?v=L0PPl-HGmys", videoThumbnail: ImageConstant.imgVideoThumnail_7),
    RootTwoItemModel(videoId: RxString("8"),titleTxt: RxString("Young-ha Kim Be an artist, right now!"), videoUrl: "https://www.youtube.com/watch?v=zRvDWVfib2c", videoThumbnail: ImageConstant.imgVideoThumnail_1),
    ]);
}
