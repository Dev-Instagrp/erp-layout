import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GraphTypeSelector extends StatelessWidget {
  const GraphTypeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: SysColor.buttonColor,
      ),
      child: SvgPicture.asset(Paths.graphIcon, fit: BoxFit.scaleDown,),
    );
  }
}
