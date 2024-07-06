import 'dart:ui';

import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String labelText;
  final IconData leadingIcon;
  final TextEditingController controller;

  TextInput({super.key, required this.labelText, required this.leadingIcon, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.widgetRadius),
          borderSide: BorderSide(
            color: SysColor.secBackColor,
          )
        ),
        prefixIcon: Icon(leadingIcon, color: SysColor.secBackColor, size: Dimensions.iconDimension,)
      ),
    );
  }
}
