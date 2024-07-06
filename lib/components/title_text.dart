import 'package:erp_layout/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/utils.dart';

class TitleText extends StatelessWidget {

  final String title;
  const TitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${title}  ", style: FontStyles.blueSubTitleStyle.copyWith(color: SysColor.tileColor),),
        SvgPicture.asset(Paths.arrowIcon)
      ],
    );
  }
}
