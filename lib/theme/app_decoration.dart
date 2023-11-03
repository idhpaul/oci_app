import 'package:flutter/material.dart';
import 'package:oci_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: ColorConstant.gray5001,
        border: Border(
          top: BorderSide(
            color: ColorConstant.blueGray100,
            width: getHorizontalSize(
              1,
            ),
          ),
          bottom: BorderSide(
            color: ColorConstant.blueGray100,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get outlineGray70011 => BoxDecoration(
        color: ColorConstant.gray5001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray70011,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fillBlack900a2 => BoxDecoration(
        color: ColorConstant.black900A2,
      );
  static BoxDecoration get txtGradientBlack90066Black90066 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            -0.11,
            0.47,
          ),
          end: Alignment(
            1,
            0.47,
          ),
          colors: [
            ColorConstant.black90066,
            ColorConstant.black90066,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder23 = BorderRadius.circular(
    getHorizontalSize(
      23,
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius txtRoundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
