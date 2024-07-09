import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/components/AppBars/app_bar.dart';
import 'package:erp_layout/components/BottomElements/bottom_navigation_bar.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SysColor.highlightColor,
      appBar: TitleBar(imageUrl: '',),
      body: ListsUtils.screens[controller.currentIndex.value],
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
