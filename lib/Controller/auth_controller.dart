import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  var isRememberMeChecked = false.obs;



  @override
  void dispose() {
    emailController.dispose();
    companyNameController.dispose();
    nameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }
}