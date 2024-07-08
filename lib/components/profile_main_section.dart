import 'package:cached_network_image/cached_network_image.dart';
import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileMainSection extends StatelessWidget {

  final Map<String, dynamic> data;
  ProfileMainSection({super.key, required this.data});

  final CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 250,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: controller.getRandomColor(),
            ),
            child: CachedNetworkImage(
              imageUrl: data['imageUrl'],
              placeholder: (context, imageUrl) => Container(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(color: Colors.white),
              ),
              errorWidget: (context, imageUrl, error) => controller.placeHolder(data['name']),
            ),
          ),
          Dimensions.spacer15,
          Text(data['name'], style: FontStyles.subTitleStyle.copyWith(color: SysColor.tileColor, fontSize: 20),),
          Text(data['email'], style: FontStyles.authTextStyle.copyWith(fontSize: 14),),
          Dimensions.spacer40,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfilePageButtons(title: "Call", iconPath: Paths.callIcon, onTap: (){}),
              ProfilePageButtons(title: "Activity", iconPath: Paths.activityIcon, onTap: (){}),
              ProfilePageButtons(title: "Task", iconPath: Paths.taskIcon, onTap: (){}),
              ProfilePageButtons(title: "More", iconPath: Paths.moreHorizontalIcon, onTap: (){}),
            ],
          )
        ],
      ),
    );
  }
}

class ProfilePageButtons extends StatelessWidget {

  final String title;
  final String iconPath;
  final VoidCallback onTap;
  const ProfilePageButtons({super.key, required this.title, required this.iconPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: SysColor.highlightColor, width: 1),
            ),
            child: SvgPicture.asset(iconPath, width: 22,height: 22, fit: BoxFit.scaleDown,),
          ),
          Dimensions.spacer15,
          Text(title, style: FontStyles.bodyStyle.copyWith(color: SysColor.tileColor),)
        ],
      ),
    );
  }
}

