import 'package:cached_network_image/cached_network_image.dart';
import 'package:erp_layout/Controller/activities_controller.dart';
import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/components/Buttons/submit_button.dart';
import 'package:erp_layout/components/TextInputs/disabled_text_view.dart';
import 'package:erp_layout/components/TextInputs/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../config/colors.dart';
import '../../../config/utils.dart';
import '../QuickAction/prospects.dart';

class ProspectsDetail extends StatelessWidget {
  final Map<String, dynamic> data;
  ProspectsDetail({super.key, required this.data});

  final CommonController controller = Get.put(CommonController());
  final ActivitiesController activityController = Get.put(ActivitiesController());

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
          "Prospect Details",
          style: TextStyle(color: SysColor.tileColor, fontSize: 20,fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            onPressed: () {
              Get.to(() => Prospects());
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: SysColor.tileColor,
            )),
        actions: [
          InkWell(
            onTap: () {
              activityController.showBottomForm(context, data, Form());
            },
            child: SvgPicture.asset(Paths.editIcon),
          ),
          SizedBox(width: 16,),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(Paths.deleteIcon),
          ),
          SizedBox(width: 16,),
        ],
      ),
      body: Padding(
        padding: Dimensions.horizontalPadding,
        child: ListView(
          children: [
            Dimensions.spacer25,
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
                errorWidget: (context, imageUrl, error) =>
                    controller.placeHolder(data['name']),
              ),
            ),
            Dimensions.spacer15,
            Text(
              data['name'],
              style: FontStyles.subTitleStyle
                  .copyWith(color: SysColor.tileColor, fontSize: 20),textAlign: TextAlign.center,
            ),
            Dimensions.spacer40,
            Divider(
              color: SysColor.secBackColor,
            ),
            Dimensions.spacer25,
            InfoTextView(label: data['name']),
            Dimensions.spacer30,
            InfoTextView(label: data['phoneNumber'] ?? "+91-123 7526 45278"),
            Dimensions.spacer30,
            InfoTextView(label: data['email']),
          ],
        ),
      ),
    );
  }

  Widget Form(){
    return Padding(
      padding: Dimensions.horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Dimensions.spacer25,
          Text("Edit Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: SysColor.tileColor),),
          Dimensions.spacer25,
          Divider(color: SysColor.secBackColor,),
          Dimensions.spacer40,
          Dimensions.spacer25,
          TextInput(labelText: data['name'], leadingIcon: Paths.personIcon, controller: activityController.firstNameController),
          Dimensions.spacer25,
          TextInput(labelText: data['name'], leadingIcon: Paths.personIcon, controller: activityController.lastNameController),
          Dimensions.spacer25,
          TextInput(labelText: data['email'], leadingIcon: Paths.mailIcon, controller: activityController.lastNameController),
          Dimensions.spacer25,
          TextInput(labelText: data['phoneNumber'], leadingIcon: Paths.callIcon, controller: activityController.lastNameController),
          SizedBox(height: 110,),
          SubmitButton(onTap: (){}, title: "Save")
        ],
      ),
    );
  }
}
