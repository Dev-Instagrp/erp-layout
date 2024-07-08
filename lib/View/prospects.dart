import 'package:erp_layout/View/home_screen.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Prospects extends StatelessWidget {
  const Prospects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prospects"),
        leading: IconButton(onPressed: (){Get.offAll(HomeScreen());}, icon: Icon(Icons.arrow_back_ios_new_rounded, color: SysColor.tileColor,)),

      ),
    );
  }
}
