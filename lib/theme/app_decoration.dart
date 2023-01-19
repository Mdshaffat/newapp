import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../utils/size_utils.dart';

class AppDecoration {
  static BoxDecoration get outlineIndigo100 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.indigo100,
          width: getHorizontalSize(
            0.50,
          ),
          strokeAlign: StrokeAlign.outside,
        ),
      );
  static BoxDecoration get txtFillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get gradientWhiteA700Bluegray100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            0.1,
          ),
          end: Alignment(
            1.2,
            0.21,
          ),
          colors: [
            ColorConstant.whiteA700,
            ColorConstant.blueGray100,
          ],
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder18 = BorderRadius.circular(
    getHorizontalSize(
      18.00,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius roundedBorder2 = BorderRadius.circular(
    getHorizontalSize(
      2.00,
    ),
  );

  static BorderRadius customBorderBL71 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        71.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        71.00,
      ),
    ),
  );
}
