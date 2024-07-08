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
    color: SysColor.tileColor
  );
  static TextStyle bodyStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
  );
  static TextStyle authTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: Color(0xFFA9A9A9)
  );
}

/********************* Paths ********************/
class Paths{

  static String apiKey = "AIzaSyAhLRwcdflWVKGfSc8zD81I4vOnS0xbFZ0";

  static String msgIcon = "assets/Icons/msg.svg";
  static String addIcon = "assets/Icons/Add.svg";
  static String homeIcon = "assets/Icons/Home.svg";
  static String financeIcon = "assets/Icons/Finance.svg";
  static String moreIcon = "assets/Icons/More.svg";
  static String personIcon = "assets/Icons/person.svg";
  static String salesIcon = "assets/Icons/sales.svg";
  static String storesIcon = "assets/Icons/store.svg";
  static String mailIcon = "assets/Icons/Mail.svg";
  static String phoneIcon = "assets/Icons/Phone.svg";
  static String notificationIcon = "assets/Icons/notifications_unread.svg";
  static String arrowIcon = "assets/Icons/arrow.svg";
  static String locationIcon = "assets/Icons/Location.svg";
  static String salesTeamIcon = "assets/Icons/sales_team.svg";
  static String taskIcon = "assets/Icons/Task.svg";
  static String prospectsIcon = "assets/Icons/Prospects.svg";
  static String sortIcon = "assets/Icons/sort.svg";
  static String graphIcon = "assets/Icons/graph.svg";
  static String searchIcon = "assets/Icons/search.svg";
  static String dotsIcon = "assets/Icons/three_dots.svg";
  static String editIcon = "assets/Icons/Edit.svg";
  static String deleteIcon = "assets/Icons/Delete.svg";
  static String callIcon = "assets/Icons/call.svg";
  static String activityIcon = "assets/Icons/activity.svg";
  static String moreHorizontalIcon = "assets/Icons/DotsThree.svg";
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