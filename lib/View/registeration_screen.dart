import 'package:erp_layout/Controller/auth_controller.dart';
import 'package:erp_layout/View/otp_screen.dart';
import 'package:erp_layout/components/submit_button.dart';
import 'package:erp_layout/components/terms_text.dart';
import 'package:erp_layout/components/text_input.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../config/colors.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TermsText(terms: () {  }, policy: () {  },),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: Dimensions.horizontalPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text("Almost", style: FontStyles.blueTitleStyle,textAlign: TextAlign.left,),
              subtitle: Text("There!", style: FontStyles.redTitleStyle,textAlign: TextAlign.left,),
            ),
            Dimensions.spacer15,
            Text("Help us with a few details about you. We promise, \n we will not spam you :-)", style: FontStyles.authTextStyle,),
            Dimensions.spacer40,
            Text(controller.emailController.text.isNotEmpty ? controller.emailController.text : "user.email@company.com", style: TextStyle(fontSize: 12, color: SysColor.tileColor, fontWeight: FontWeight.bold),),
            Dimensions.spacer110,
            TextInput(labelText: "Company Name", leadingIcon: Paths.storesIcon, controller: controller.companyNameController,),
            Dimensions.spacer15,
            TextInput(labelText: "Full Name", leadingIcon: Paths.personIcon, controller: controller.nameController,),
            Dimensions.spacer15,
            TextInput(labelText: "Mobile Number", leadingIcon: Paths.phoneIcon, controller: controller.phoneNumberController,),
            Dimensions.spacer85,
            SubmitButton(title: "Proceed", onTap: (){Get.to(()=>OTPScreen(), transition: Transition.fadeIn);},),
            Dimensions.spacer25,
          ],
        ),
      ),
    );
  }
}
