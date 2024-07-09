import 'package:erp_layout/config/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActivitiesController extends GetxController{


  final TextEditingController nameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  void showBottomForm(BuildContext context, Map<String, dynamic> data, Widget content){
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
        context: context,
        builder: (context){
      return Container(
        height: 700,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){Navigator.pop(context);},
              child: CircleAvatar(
                backgroundColor: Color(0xFF1C1C1C),
                child: Center(child: Icon(Icons.close_rounded, color: Colors.white,),),
              ),
            ),
            Dimensions.spacer30,
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)
                )
            ),
                  child: content,
                  ),
                )
          ],
        ),
      );
    });
  }

}