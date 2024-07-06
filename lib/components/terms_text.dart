import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';

import '../config/colors.dart';

class TermsText extends StatelessWidget {
  final VoidCallback terms;
  final VoidCallback policy;

  const TermsText({super.key, required this.terms, required this.policy});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("By Proceeding, you agree to our", style: FontStyles.authTextStyle.copyWith(fontSize: 10),),
          GestureDetector(onTap: terms, child: Text(" Terms ", style: TextStyle(color: SysColor.buttonColor, fontSize: 10),),),
          Text("&", style: FontStyles.authTextStyle.copyWith(fontSize: 10),),
          GestureDetector(onTap: policy, child: Text(" Privacy Policy", style: TextStyle(color: SysColor.buttonColor, fontSize: 10),),),
        ],
      ),
    );
  }
}
