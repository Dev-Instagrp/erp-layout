import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentContactCard extends StatelessWidget {

  final String name;
  final VoidCallback onTap;
  final String imageUrl;
  RecentContactCard({super.key, required this.name, required this.onTap, required this.imageUrl});

  CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: 80,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.getRandomColor(),
              ),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                placeholder: (context, imageUrl) => Container(height: 15,width: 15,child: CircularProgressIndicator(color: Colors.white,),),
                errorWidget: (context, imageUrl, error) => controller.placeHolder(name),
              ),
            ),
            formatName(name)
          ],
        ),
      ),
    );
  }

  Widget formatName(String name) {
    List<String> parts = name.split(' ');
    int mid = (parts.length / 2).ceil();
    String firstHalf = parts.sublist(0, mid).join(' ');
    String secondHalf = parts.sublist(mid).join(' ');
    return Column(
      children: [
        Text(firstHalf, style: FontStyles.bodyStyle.copyWith(color: SysColor.tileColor, fontSize: 14, fontWeight: FontWeight.w600)),
        Text(secondHalf, style: FontStyles.authTextStyle),
      ],
    );
  }

}
