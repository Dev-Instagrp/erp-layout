import 'package:erp_layout/Controller/auth_controller.dart';
import 'package:erp_layout/View/home_screen.dart';
import 'package:erp_layout/components/Buttons/submit_button.dart';
import 'package:erp_layout/components/BottomElements/terms_text.dart';
import 'package:erp_layout/config/colors.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({super.key});

  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: FontStyles.subTitleStyle.copyWith(
        color: SysColor.tileColor
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: SysColor.highlightColor)
      )
    );

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
              title: Text("Here is your", style: FontStyles.blueTitleStyle,textAlign: TextAlign.left,),
              subtitle: Text("OTP!", style: FontStyles.redTitleStyle,textAlign: TextAlign.left,),
            ),
            Dimensions.spacer15,
            Text("Please check your email. You should have received \n OTP. Please enter it here. (Don’t forget to check spam)", style: FontStyles.authTextStyle,),
            Dimensions.spacer40,
            Text(controller.companyNameController.text.isNotEmpty ? controller.companyNameController.text : "Company Name", style: TextStyle(fontSize: 12, color: SysColor.tileColor, fontWeight: FontWeight.bold),),
            Dimensions.spacer15,
            Text(controller.emailController.text .isNotEmpty ? controller.emailController.text : "user@gmail.com", style: TextStyle(fontSize: 12, color: SysColor.tileColor, fontWeight: FontWeight.bold),),
            Dimensions.spacer40,
            Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: SysColor.tileColor
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
              onCompleted: (pin) => debugPrint(pin),
            ),
            Dimensions.spacer85,
            SubmitButton(onTap: (){Get.to(()=>HomeScreen(), transition: Transition.fadeIn);}, title: "Login"),
            Dimensions.spacer25,
          ],
        ),
      ),
    );
  }
}
