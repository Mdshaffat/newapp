import 'package:dotplus/view/auth/login_view.dart';
import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/size_utils.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(
                  550.00,
                ),
                width: size.width,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle1,
                      height: getVerticalSize(
                        550.00,
                      ),
                      width: getHorizontalSize(
                        390.00,
                      ),
                      radius: BorderRadius.only(
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
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 29,
                          top: 30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.dotpluswhiteLogo,
                              height: getVerticalSize(
                                18.00,
                              ),
                              width: getHorizontalSize(
                                70.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.dotplusBlueLogo,
                              height: getVerticalSize(
                                62.00,
                              ),
                              width: getHorizontalSize(
                                246.00,
                              ),
                              alignment: Alignment.center,
                              margin: getMargin(
                                top: 312,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  310.00,
                ),
                margin: getMargin(
                  left: 30,
                  top: 37,
                ),
                child: Text(
                  "Manage Appointment, Patient-centered record, Analyze disease pattern, & Telemedicine in one central system",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ColorConstant.blueGray800,
                    fontSize: getFontSize(
                      19,
                    ),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 1.37,
                  ),
                ),
              ),
              CustomButton(
                height: 57,
                width: 297,
                text: "GET STARTED",
                margin: getMargin(
                  top: 37,
                  bottom: 5,
                ),
                variant: ButtonVariant.OutlineGray50,
                padding: ButtonPadding.PaddingAll19,
                fontStyle: ButtonFontStyle.InterBold14,
                alignment: Alignment.center,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
