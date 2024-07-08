import 'package:erp_layout/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../config/utils.dart';

class TitleText extends StatelessWidget {

  final String title;
  final Widget destination;
  const TitleText({super.key, required this.title, required this.destination});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => destination, transition: Transition.fadeIn);
      },
      child: Row(
        children: [
          Text("${title}  ", style: FontStyles.blueSubTitleStyle.copyWith(color: SysColor.tileColor),),
          SvgPicture.asset(Paths.arrowIcon)
        ],
      ),
    );
  }
}
