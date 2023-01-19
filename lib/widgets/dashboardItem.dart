import 'package:flutter/material.dart';

import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../utils/color_constant.dart';
import '../utils/image_constant.dart';
import '../utils/size_utils.dart';
import 'custom_image_view.dart';

class DashboardItem extends StatelessWidget {
  Color? color;
  String title;
  String subtitle;
  Function ontap;
  DashboardItem(
      {super.key,
      required this.color,
      required this.title,
      required this.subtitle,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          ontap;
        },
        child: Container(
            height: getVerticalSize(130.00),
            width: getHorizontalSize(336.00),
            margin: getMargin(top: 24),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      height: getVerticalSize(130.00),
                      width: getHorizontalSize(30.00),
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(
                              getHorizontalSize(15.00))))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: getMargin(right: 6),
                      height: getVerticalSize(130.00),
                      padding:
                          getPadding(left: 24, top: 35, right: 24, bottom: 35),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: getPadding(left: 5),
                                child: Text(title,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold16.copyWith(
                                        height: getVerticalSize(1.00)))),
                            Padding(
                                padding: getPadding(left: 5, top: 1, bottom: 4),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(205.00),
                                          child: Text(subtitle,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          2.00)))),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getVerticalSize(15.00),
                                          width: getHorizontalSize(9.00),
                                          margin: getMargin(bottom: 16))
                                    ]))
                          ])))
            ])));
  }
}
