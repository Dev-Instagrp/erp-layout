import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';import '../../config/colors.dart';
import '../../config/utils.dart';

class FormInput extends StatelessWidget {

  final String labelText;
  final String leadingIcon;
  final TextEditingController controller;

  FormInput({super.key, required this.labelText, required this.leadingIcon, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value){
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
