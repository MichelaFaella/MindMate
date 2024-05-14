import 'package:flutter/material.dart';
import 'package:mind_mate/pages/utilities/utilityWidgets.dart';
import 'package:size_config/size_config.dart';

var bottomTabs = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Container(
      width: 30.w,
      height: 30.h,
      child: appIcon(imagePath: "assets/icons/home.png", width: 20.w, height: 20.h),
    ),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: Container(
      width: 30.w,
      height: 30.h,
      child: appIcon(imagePath: "assets/icons/search.png", width: 20.w, height: 20.h),
    ),
    label: "Search",
  ),
];
