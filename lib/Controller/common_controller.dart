import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../config/colors.dart';
import '../config/utils.dart';

class CommonController extends GetxController{
  TextEditingController chatBotController = TextEditingController();
  var isUnread = true.obs;
  var currentIndex = 0.obs;
  var userName = "John".obs;



  void changePage(int index) {
    currentIndex.value = index;
  }

  Color getRandomColor() {
    final random = Random();
    final colors = [SysColor.tileColor, SysColor.buttonColor];
    return colors[random.nextInt(colors.length)];
  }

  Widget placeHolder(String name) {
    List<String> parts = name.split(' ');
    int mid = (parts.length / 2).ceil();
    String firstHalf = parts.sublist(0, mid).join(' ');
    String secondHalf = parts.sublist(mid).join(' ');

    String first = firstHalf.isNotEmpty ? firstHalf[0] : '';
    String second = secondHalf.isNotEmpty ? secondHalf[0] : '';
    return Text(
      "$first$second",
      style: FontStyles.subTitleStyle.copyWith(color: Colors.white, fontSize: 18),
    );
  }
}