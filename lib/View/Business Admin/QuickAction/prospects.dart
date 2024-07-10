import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/components/AppBars/other_app_bar.dart';
import 'package:erp_layout/components/Buttons/create_button.dart';
import 'package:erp_layout/components/ListTiles/prospects_tile.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/list.dart';

class Prospects extends StatelessWidget {
  Prospects({super.key});

  final CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: OtherAppBar(title: "Prospects"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child:
        /*************** You can configure API and then uncomment this code and remove static code****************/
        // Obx(() {
        //   if (controller.salesTeam.isEmpty) {
        //     return Center(child: CircularProgressIndicator());
        //   } else {
        //     return ListView.builder(
        //       itemCount: controller.salesTeam.length + 1,
        //       itemBuilder: (context, index) {
        //         if (index == 0) {
        //           return CreateButton(
        //             iconPath: Paths.userPlusIcon,
        //             title: "Create new prospects",
        //             onTap: () {
        //             },
        //           );
        //         } else {
        //           final member = controller.salesTeam[index - 1];
        //           return ProspectsTile(data: member);
        //         }
        //       },
        //     );
        //   }
        // }),
        ListView.builder(
          itemCount: ListsUtils.salesTeamData.length + 1,
          itemBuilder: (context, index){
            if(index==0){
              return CreateButton(iconPath: Paths.userPlusIcon, title: "Create new prospects", onTap: (){});
            }
              return ProspectsTile(data: ListsUtils.salesTeamData[index-1]);
          },
        )
      )
    );
  }

  void showBottom(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        color: Colors.red,
        height: 100,
      );
    });
  }
}
