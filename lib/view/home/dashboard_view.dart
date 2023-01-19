import 'package:dotplus/view/auth/login_view.dart';
import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/routes/app_routes.dart';
import '../../utils/size_utils.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/dashboardItem.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            //extendBodyBehindAppBar: true,

            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            drawer: Drawer(),
            appBar: AppBar(
              backgroundColor: Colors.white,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                      ColorConstant.whiteA700,
                      ColorConstant.whiteA700,
                    ])),
              ),
              elevation: 0,
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                      //size: 44, // Changing Drawer Icon Size
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    // backgroundColor: AssetImage(''),
                    child: Container(
                        height: getSize(40.00),
                        width: getSize(40.00),
                        decoration: BoxDecoration(
                            color: ColorConstant.indigo100,
                            borderRadius: BorderRadius.circular(
                                getHorizontalSize(20.00)))),
                  ),
                )
              ],
            ),
            body: Container(
                width: size.width,
                height: size.height - 20,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                      ColorConstant.blueGray100,
                      ColorConstant.whiteA700,
                    ])),
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 17, top: 0, right: 17, bottom: 27),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Dashboard",
                                    //overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold19.copyWith(
                                        height: getVerticalSize(3.00)))),
                          ),
                          SizedBox(
                            width: size.width,
                            height: 500,
                            child: SingleChildScrollView(
                              //scrollDirection: Axis.horizontal,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  DashboardItem(
                                      title: "Patient",
                                      subtitle: "subtitle",
                                      color: ColorConstant.primaryColor,
                                      ontap: () {}),
                                  DashboardItem(
                                      title: "Patient Offline",
                                      subtitle: "subtitle",
                                      color: Colors.red,
                                      ontap: () {}),
                                  DashboardItem(
                                      title: "Prescription",
                                      subtitle: "subtitle",
                                      color: Colors.green,
                                      ontap: () {}),
                                  DashboardItem(
                                      title: "Prescription Offline",
                                      subtitle: "subtitle",
                                      color: Colors.pink,
                                      ontap: () {}),
                                  DashboardItem(
                                      title: "Patient History",
                                      subtitle: "subtitle",
                                      color: Colors.orange,
                                      ontap: () {}),
                                  DashboardItem(
                                      title: "Telemedicine",
                                      subtitle: "subtitle",
                                      color: Colors.cyan,
                                      ontap: () {}),
                                  DashboardItem(
                                      title: "Report",
                                      subtitle: "subtitle",
                                      color: Colors.brown,
                                      ontap: () {}),
                                  DashboardItem(
                                      title: "Sync Data",
                                      subtitle: "subtitle",
                                      color: Colors.blueGrey,
                                      ontap: () {}),
                                ],
                              ),
                            ),
                          )
                        ]))),
            bottomNavigationBar: CustomBottomBar()));
  }
}
