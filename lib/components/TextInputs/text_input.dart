import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextInput extends StatelessWidget {
  final String labelText;
  final String leadingIcon;
  final TextEditingController controller;

  TextInput({super.key, required this.labelText, required this.leadingIcon, required this.controller});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: FontStyles.authTextStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.widgetRadius),
          borderSide: BorderSide(
            color: SysColor.highlightColor,
          )
        ),
        prefixIcon: SvgPicture.asset(leadingIcon, fit: BoxFit.scaleDown, height: Dimensions.iconDimension, width: Dimensions.iconDimension,)
      ),
    );
  }
}
