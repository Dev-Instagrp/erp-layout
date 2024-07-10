import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/components/AppBars/other_app_bar.dart';
import 'package:erp_layout/components/ListTiles/sales_team_tile.dart';
import 'package:erp_layout/config/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalesTeam extends StatelessWidget {
  SalesTeam({super.key});

  final CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: OtherAppBar(title: "Sales Team"),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        color: Colors.white,
        child:
            /*************** You can configure API and then uncomment this code and remove static code****************/
        // Obx(() {
        //   if (controller.salesTeam.isEmpty) {
        //     return Center(child: CircularProgressIndicator());
        //   } else {
        //     return ListView.builder(
        //       itemCount: controller.salesTeam.length,
        //       itemBuilder: (context, index) {
        //         final member = controller.salesTeam[index];
        //         return SalesTeamTile(data: member);
        //       },
        //     );
        //   }
        // }),
        ListView(
          children: [
            SalesTeamTile(data: ListsUtils.salesTeamData[0]),
            SalesTeamTile(data: ListsUtils.salesTeamData[1]),
            SalesTeamTile(data: ListsUtils.salesTeamData[2]),
            SalesTeamTile(data: ListsUtils.salesTeamData[3]),
            SalesTeamTile(data: ListsUtils.salesTeamData[4]),
            SalesTeamTile(data: ListsUtils.salesTeamData[5]),
          ],
        ),
      ),
      ),
    );
  }
}
