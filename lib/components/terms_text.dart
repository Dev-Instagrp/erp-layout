import 'package:flutter/material.dart';

import '../config/colors.dart';

class TermsText extends StatelessWidget {
  final VoidCallback terms;
  final VoidCallback policy;

  const TermsText({super.key, required this.terms, required this.policy});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("By Proceeding, you agree to our", style: TextStyle(color: SysColor.secBackColor, fontSize: 10),),
        GestureDetector(onTap: terms, child: Text(" Terms ", style: TextStyle(color: SysColor.buttonColor, fontSize: 10),),),
        Text("&", style: TextStyle(color: SysColor.secBackColor, fontSize: 10),),
        GestureDetector(onTap: policy, child: Text(" Privacy Policy", style: TextStyle(color: SysColor.buttonColor, fontSize: 10),),),
      ],
    );
  }
}
