import 'package:erp_layout/Controller/auth_controller.dart';
import 'package:erp_layout/View/registeration_screen.dart';
import 'package:erp_layout/components/submit_button.dart';
import 'package:erp_layout/components/terms_text.dart';
import 'package:erp_layout/components/text_input.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  
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
              title: Text("Welcome,", style: FontStyles.blueTitleStyle,textAlign: TextAlign.left,),
              subtitle: Text("Superhuman!", style: FontStyles.redTitleStyle,textAlign: TextAlign.left,),
            ),
            Dimensions.spacer15,
            Text("Login to see a whole new world of possibilities. \n Experience the power of AI at your fingertips.", style: FontStyles.authTextStyle,),
            Dimensions.spacer110,
            TextInput(labelText: "Enter your email", leadingIcon: Paths.mailIcon, controller: controller.emailController,),
            Dimensions.spacer15,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(() => Checkbox(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3), side: BorderSide(color: SysColor.highlightColor)),
                  value: controller.isRememberMeChecked.value,
                  onChanged: (bool? newValue) {
                    controller.isRememberMeChecked.value = newValue!;
                  },
                )),
                Text("Remember me"),
              ],
            ),
            Dimensions.spacer85,
            SubmitButton(title: "Proceed", onTap: (){Get.to(()=>RegisterScreen(), transition: Transition.fadeIn);},),
            Dimensions.spacer25,
          ],
        ),
      ),
    );
  }
}
