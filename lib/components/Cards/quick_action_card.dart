import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/View/QuickAction/sales_team.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class QuickActionCard extends StatelessWidget {

  final String title;
  final Widget destination;
  final String icon;
  QuickActionCard({super.key, required this.title, required this.destination, required this.icon});

  CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Get.to(destination, transition: Transition.fadeIn);},
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 90,
        width: 80,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: SysColor.highlightColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
          color: Colors.transparent
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: SysColor.highlightColor,
              ),
              child: SvgPicture.asset(icon),
            ),
            Text(title, style: FontStyles.bodyStyle.copyWith(color: SysColor.tileColor, fontSize: 10),)
          ],
        ),
      ),
    );
  }
}
