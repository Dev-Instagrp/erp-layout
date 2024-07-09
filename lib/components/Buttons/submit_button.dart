import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  
  const SubmitButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashFactory: InkRipple.splashFactory,
      child: Container(
        height: Dimensions.inputHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: SysColor.buttonColor,
          borderRadius: BorderRadius.circular(Dimensions.widgetRadius)
        ),
        child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
      ),
    );
  }
}
