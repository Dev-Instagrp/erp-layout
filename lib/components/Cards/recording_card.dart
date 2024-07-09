import 'package:cached_network_image/cached_network_image.dart';
import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/utils.dart';

class RecordingCard extends StatelessWidget {
  final String name;
  final String number;
  final String imageUrl;
  final String time;
  final String duration;

  RecordingCard({super.key, required this.name, required this.number, required this.imageUrl, required this.time, required this.duration});

  CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
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
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: FontStyles.bodyStyle.copyWith(color: SysColor.tileColor, fontWeight: FontWeight.bold, fontSize: 14)),
          Text(time, style: FontStyles.bodyStyle.copyWith(color: SysColor.secBackColor),),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(number, style: FontStyles.bodyStyle.copyWith(color: SysColor.secBackColor)),
          Text(duration, style: FontStyles.bodyStyle.copyWith(color: SysColor.secBackColor)),
        ],
      ),
    );
  }
}
