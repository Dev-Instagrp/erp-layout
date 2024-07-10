import 'package:cached_network_image/cached_network_image.dart';
import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/View/Business%20Admin/DetailsAndProfiles/prospects_detail.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProspectsTile extends StatelessWidget {
  final Map<String, dynamic> data;

  ProspectsTile({super.key, required this.data});

  final CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    String imageUrl = data['imageUrl'];
    String name = data['name'];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.5),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: SysColor.greyColor)),
      ),
      child: ListTile(
        isThreeLine: false,
        onTap: ()=>Get.to(ProspectsDetail(data: data)),
        leading: Container(
          alignment: Alignment.center,
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: controller.getRandomColor(),
          ),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, imageUrl) => Container(
              height: 15,
              width: 15,
              child: CircularProgressIndicator(color: Colors.white),
            ),
            errorWidget: (context, imageUrl, error) => controller.placeHolder(name),
          ),
        ),
        title: Text(
          name,
          style: FontStyles.subTitleStyle.copyWith(color: SysColor.tileColor),
        ),
      ),
    );
  }
}
