import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../View/home_screen.dart';
import '../../config/colors.dart';
import '../../config/utils.dart';

class OtherAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const OtherAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 2,
      shadowColor: SysColor.highlightColor,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Text(title, style: TextStyle(color: SysColor.tileColor, fontSize: 20,fontWeight: FontWeight.w500),),
      leading: IconButton(onPressed: (){Get.offAll(()=>HomeScreen());}, icon: Icon(Icons.arrow_back_ios_new_rounded, color: SysColor.tileColor,)),
      actions: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 15), child: InkWell(onTap: (){}, child: SvgPicture.asset(Paths.searchIcon),),)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}

