import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';

class InfoTextView extends StatelessWidget {
  final String label;
  const InfoTextView({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      alignment: Alignment.centerLeft,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(100)
      ),
      child: Text(label, style: TextStyle(fontSize: 16, color: SysColor.tileColor, fontWeight: FontWeight.w500),),
    );
  }
}
