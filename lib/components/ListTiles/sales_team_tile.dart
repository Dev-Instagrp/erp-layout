import 'package:cached_network_image/cached_network_image.dart';
import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/View/DetailsAndProfiles/sales_team_profile.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SalesTeamTile extends StatelessWidget {
  final Map<String, dynamic> data;

  SalesTeamTile({super.key, required this.data});

  final CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    String imageUrl = data['imageUrl'];
    String name = data['name'];
    String email = data['email'];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.5),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: SysColor.greyColor)),
      ),
      child: ListTile(
        onTap: ()=>Get.to(SalesTeamProfile(data: data)),
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
        subtitle: Text(email, style: FontStyles.authTextStyle),
        trailing: PopupMenuButton<String>(
          onSelected: (String result) {
            if (result == 'edit') {
              // Implement your edit action here
            } else if (result == 'delete') {
              // Implement your delete action here
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
             PopupMenuItem<String>(
              value: 'edit',
              child: Row(
                children: [
                  SvgPicture.asset(Paths.editIcon),
                  SizedBox(width: 15,),
                  Text('Edit'),
                ],
              ),
            ),
             PopupMenuItem<String>(
              value: 'delete',
              child: Row(
                children: [
                  SvgPicture.asset(Paths.deleteIcon),
                  SizedBox(width: 15,),
                  Text('Delete'),
                ],
              ),
            ),
          ],
          icon: SvgPicture.asset(Paths.dotsIcon),
        ),
      ),
    );
  }
}
