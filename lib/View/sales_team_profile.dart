import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/View/sales_team.dart';
import 'package:erp_layout/components/new_prospects.dart';
import 'package:erp_layout/components/profile_main_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../config/colors.dart';
import '../config/utils.dart';

class SalesTeamProfile extends StatelessWidget {
  final Map<String, dynamic> data;
  SalesTeamProfile({super.key, required this.data});

  final CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    String imageUrl = data['imageUrl'];
    String name = data['name'];
    String email = data['email'];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 2,
        shadowColor: SysColor.highlightColor,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Sales Team Details",
          style: TextStyle(color: SysColor.tileColor),
        ),
        leading: IconButton(
            onPressed: () {
              Get.to(() => SalesTeam());
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: SysColor.tileColor,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {},
              child: SvgPicture.asset(Paths.searchIcon),
            ),
          )
        ],
      ),
      body: Padding(
        padding: Dimensions.horizontalPadding,
        child: ListView(
          children: [
            Dimensions.spacer25,
            ProfileMainSection(data: data),
            Dimensions.spacer40,
            Divider(
              color: SysColor.secBackColor,
            ),
            Dimensions.spacer25,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Prospects (${data['prospects'] ?? "04"})",
                  style: FontStyles.bodyStyle.copyWith(
                      color: SysColor.tileColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Obx(
                  () => TextButton(
                      onPressed: () {
                        controller.showDate(context);
                      },
                      child: Text(
                          "${controller.day.value}, ${controller.month.value}")),
                ),
              ],
            ),
            Dimensions.spacer15,
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: SysColor.highlightColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NewProspects(name: "James Mary", onTap: (){}, imageUrl: ""),
                  NewProspects(name: "Williams Barbara", onTap: (){}, imageUrl: ""),
                  NewProspects(name: "Jerry Judith", onTap: (){}, imageUrl: ""),
                  NewProspects(name: "Nicholas Angela", onTap: (){}, imageUrl: ""),
                ],
              ),
            ),
            Dimensions.spacer40,
            Text(
              "Live Location",
              style: FontStyles.bodyStyle.copyWith(
                  color: SysColor.tileColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
