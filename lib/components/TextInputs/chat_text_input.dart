import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../View/Business Admin/DetailsAndProfiles/ask_me_anything.dart';

class ChatTextInput extends StatelessWidget {
  final String labelText;
  final String leadingIcon;
  final TextEditingController controller;

  ChatTextInput({super.key, required this.labelText, required this.leadingIcon, required this.controller});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value){
        Get.to(()=>ChatHelper(message: value,));
      },
      controller: controller,
      decoration: InputDecoration(
        focusColor: SysColor.highlightColor,
          hintText: labelText,
          hintStyle: FontStyles.authTextStyle,
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
