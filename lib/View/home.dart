import 'package:erp_layout/Controller/common_controller.dart';
import 'package:erp_layout/View/home_screen.dart';
import 'package:erp_layout/components/chart.dart';
import 'package:erp_layout/components/client_record_table.dart';
import 'package:erp_layout/components/graph_type_selector.dart';
import 'package:erp_layout/components/quick_action_card.dart';
import 'package:erp_layout/components/recent_contact_card.dart';
import 'package:erp_layout/components/recording_card.dart';
import 'package:erp_layout/components/title_text.dart';
import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/colors.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final CommonController controller = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimensions.horizontalPadding,
      color: Colors.white,
      child: ListView(
        children: [
          Dimensions.spacer40,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Welcome ", style: FontStyles.blueTitleStyle,),
            Text("${controller.userName.value} ! 👋", style: FontStyles.redTitleStyle,),
          ],
          ),
          Dimensions.spacer40,
          TitleText(title: "Quick Actions", destination: Home(),),
          Dimensions.spacer15,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              QuickActionCard(title: "Sales Team", destination: HomeScreen(), icon: Paths.salesTeamIcon),
              QuickActionCard(title: "Location", destination: HomeScreen(), icon: Paths.locationIcon),
              QuickActionCard(title: "Prospects", destination: HomeScreen(), icon: Paths.prospectsIcon),
              QuickActionCard(title: "Task", destination: HomeScreen(), icon: Paths.taskIcon),
            ],
          ),
          Dimensions.spacer40,
          TitleText(title: "Recent Contacts", destination: Home(),),
          Dimensions.spacer15,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
            decoration: BoxDecoration(
                border: Border.all(
                  color: SysColor.highlightColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
                color: Colors.transparent
            ),
            child: Row(
              /******API Integrations Code************/
              // children: controller.recentContacts.map((contact) {
              //   return RecentContactCard(
              //     name: contact['name'],
              //     onTap: () {},
              //     imageUrl: contact['imageUrl'],
              //   );
              // }).toList(),
              children: [
                RecentContactCard(name: "James Mary", onTap: (){}, imageUrl: ""),
                RecentContactCard(name: "Williams Barbara", onTap: (){}, imageUrl: ""),
                RecentContactCard(name: "Jerry Judith", onTap: (){}, imageUrl: ""),
                RecentContactCard(name: "Nicholas Angela", onTap: (){}, imageUrl: ""),
              ],
            ),
          ),
          Dimensions.spacer40,
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFF9F9F9)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(title: "Total Units(Turnover)", destination: Home(),),
                    GraphTypeSelector(),
                  ],
                ),
                Dimensions.spacer15,
                BarChart(),
              ],
            ),
          ),
          Dimensions.spacer40,
          TitleText(title: "Recent Recordings", destination: Home(),),
          //TODO Add on Tap to Recent Recording
          Dimensions.spacer15,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
            decoration: BoxDecoration(
                border: Border.all(
                  color: SysColor.highlightColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
                color: Colors.transparent
            ),
            child: Column(
              /******API Integrations Code************/
              // children: controller.recentRecordings.map((recording) {
              //   return RecordingCard(
              //     name: recording['name'],
              //     number: recording['number'],
              //     imageUrl: recording['imageUrl'],
              //     time: recording['time'],
              //     duration: recording['duration'],
              //   );
              // }).toList(),
              children: [
                RecordingCard(name: "Christopher", number: "+1 1234567892", imageUrl: "", time: "12:03 pm", duration: "13:05 s"),
                RecordingCard(name: "Ashley", number: "+1 1234567892", imageUrl: "", time: "07:23 am", duration: "09:05 s"),
              ],
            ),
          ),
          Dimensions.spacer40,
          TitleText(title: "Client Record List", destination: Home(),),
          Dimensions.spacer15,
          ClientRecordTable(data: controller.clientRecords, onItemTap: (data) {  },),
          Dimensions.spacer40
        ],
      ),
    );
  }
}

