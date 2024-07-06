import 'package:erp_layout/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FontStyles{
  static TextStyle titleStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );
  static TextStyle blueTitleStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    color: SysColor.tileColor
  );
  static TextStyle redTitleStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    color: SysColor.buttonColor
  );
  static TextStyle subTitleStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  static TextStyle blueSubTitleStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    color: SysColor.secBackColor
  );
  static TextStyle bodyStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
  );
}

class Dimensions{

  /********************* Padding ********************/

  static EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 16.0);



  /********************* dimensions ********************/

  static double inputHeight = 50.0;
  static double widgetRadius = 25.0;
  static double avatarDimensions = 50.0;
  static double profilePicDimension = 80.0;
  static double iconDimension = 24.0;


  /********************* Spacer ********************/

  /****BuildContext can be provided as parameter to avoid null context issue but,
  thought to go for Getx context as we will apply these spacer for scoped widgets only***/

  static SizedBox get spacer15 => SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.01);
  static SizedBox get spacer85 => SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.1);
  static SizedBox get spacer40 => SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.04);
  static SizedBox get spacer110 => SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.13);
  static SizedBox get spacer145 => SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.17);
  static SizedBox get spacer25 => SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.025);
}