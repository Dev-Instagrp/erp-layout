import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: SysColor.tileColor,
      currentIndex: controller.currentIndex.value,
      onTap: (index) {
        // Made Add index non-clickable
        if (index != 2) {
          controller.changePage(index);
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: CustomIcon(controller, 0, Paths.homeIcon, 'Home'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(controller, 1, Paths.salesIcon, 'Sales'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(controller, 2, Paths.addIcon, ''),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(controller, 3, Paths.financeIcon, 'Finance'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(controller, 4, Paths.moreIcon, 'More'),
          label: '',
        ),
      ],
    ));
  }
}

class CustomIcon extends StatelessWidget {
  final CommonController controller;
  final int index;
  final String iconPath;
  final String label;

  CustomIcon(this.controller, this.index, this.iconPath, this.label);

  @override
  Widget build(BuildContext context) {
    bool isSelected = controller.currentIndex.value == index;
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFFFFFFF) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            color: isSelected ? Color(0xFF424874) : Colors.white,
          ),
          if (label.isNotEmpty) ...[
            SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? SysColor.tileColor : Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
