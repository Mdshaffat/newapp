import 'package:flutter/material.dart';

import '../utils/app_export.dart';
import '../utils/color_constant.dart';
import '../utils/size_utils.dart';
import 'custom_image_view.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int i = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(left: 20, right: 21, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            50.00,
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: i,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: CircleAvatar(
                  backgroundColor: ColorConstant.primaryColor,
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sync),
              activeIcon: CircleAvatar(
                  backgroundColor: ColorConstant.primaryColor,
                  child: Icon(
                    Icons.sync,
                    color: Colors.white,
                  )),
              label: "Sync"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              activeIcon: CircleAvatar(
                  backgroundColor: ColorConstant.primaryColor,
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                  )),
              label: "Patient"),
          BottomNavigationBarItem(
              icon: Icon(Icons.medication),
              activeIcon: CircleAvatar(
                  backgroundColor: ColorConstant.primaryColor,
                  child: Icon(
                    Icons.medication,
                    color: Colors.white,
                  )),
              label: "Prescription"),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone_enabled),
              activeIcon: CircleAvatar(
                  backgroundColor: ColorConstant.primaryColor,
                  child: Icon(
                    Icons.phone_enabled,
                    color: Colors.white,
                  )),
              label: "Telemedicine"),
        ],
        onTap: (value) {
          setState(() {
            i = value;
          });
        },
      ),
    );
  }
}
