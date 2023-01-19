import 'package:dotplus/utils/app_export.dart';
import 'package:dotplus/view/home/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/routes/app_routes.dart';
import '../../utils/size_utils.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                              height: getVerticalSize(256),
                              width: getHorizontalSize(440.00),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Positioned(
                                        top: getVerticalSize(-271),
                                        left: getVerticalSize(-231),
                                        child: Container(
                                          height: getVerticalSize(456),
                                          width: getHorizontalSize(456),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.primaryColor,
                                            shape: BoxShape.circle,
                                          ),
                                        )),
                                    CustomImageView(
                                        svgPath: ImageConstant.dotpluswhiteLogo,
                                        height: getVerticalSize(18.00),
                                        width: getHorizontalSize(71.00),
                                        alignment: Alignment.topLeft,
                                        margin: getMargin(left: 30, top: 43))
                                  ]))),
                      CustomImageView(
                          svgPath: ImageConstant.dotplusBlueLogo,
                          height: getVerticalSize(62.00),
                          width: getHorizontalSize(246.00),
                          margin: getMargin(top: 0)),
                      Container(
                          width: getHorizontalSize(325.00),
                          margin: getMargin(left: 30, top: 76, right: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Email Address".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold13),
                                CustomTextFormField(
                                    width: 325,
                                    focusNode: FocusNode(),
                                    //controller: controller.frameOneController,
                                    hintText: "Enter Email".tr,
                                    margin: getMargin(top: 8),
                                    textInputAction: TextInputAction.done)
                              ])),
                      Container(
                          width: getHorizontalSize(325.00),
                          margin: getMargin(left: 30, top: 60, right: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold13),
                                CustomTextFormField(
                                    width: 325,
                                    focusNode: FocusNode(),
                                    //controller: controller.frameOneController,
                                    hintText: "Enter Password".tr,
                                    margin: getMargin(top: 8),
                                    textInputAction: TextInputAction.done)
                              ])),
                      CustomButton(
                          height: 49,
                          width: 330,
                          text: "LOGIN GET STARTED".tr,
                          margin: getMargin(top: 35, bottom: 5),
                          onTap: onTapLogingetstartedOne)
                    ]))));
  }

  onTapLogingetstartedOne() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DashboardView()),
    );
  }
}
