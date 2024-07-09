import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/colors.dart';
import '../../config/utils.dart';

class CreateButton extends StatelessWidget {

  final String iconPath;
  final String title;
  final VoidCallback onTap;
  CreateButton({super.key, required this.iconPath, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Column(
      children: [
        ListTile(onTap: (){},leading: SvgPicture.asset(iconPath, width: 30, height: 30,), title: Text(title, style: FontStyles.blueSubTitleStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600),),),
        Divider(height: 1,color: SysColor.highlightColor,),
      ],
    ),);
  }
}
