import 'package:cached_network_image/cached_network_image.dart';
import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/components/TextInputs/chat_text_input.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../config/utils.dart';

class TitleBar extends StatelessWidget implements PreferredSizeWidget {

  final String imageUrl;
  TitleBar({Key? key, required this.imageUrl}) : super(key: key);

  final CommonController controller = Get.put(CommonController());
  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 2,
      shadowColor: SysColor.highlightColor,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: ChatTextInput(labelText: "Ask me anything...", leadingIcon: Paths.mailIcon, controller: controller.chatBotController,),
      actions: [
        Obx(()=> controller.isUnread.value ? InkWell(splashFactory: InkRipple.splashFactory ,onTap: (){}, child: SvgPicture.asset(Paths.notificationIcon),) : InkWell(onTap: (){}, child: SvgPicture.asset(Paths.notificationIcon),)),
        SizedBox(width: 10,),
        Container(
          padding: EdgeInsets.all(2),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: SysColor.highlightColor,
          ),
          child: CachedNetworkImage(
            imageUrl: imageUrl,placeholder: (context, imageUrl) => Icon(Icons.person_2_outlined),
            errorWidget: (context, imageUrl, error) => Icon(Icons.error),height: 10,width: 10,),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
