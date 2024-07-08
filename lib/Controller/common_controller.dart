import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../config/colors.dart';
import '../config/utils.dart';

class CommonController extends GetxController{
  TextEditingController chatBotController = TextEditingController();
  var isUnread = true.obs;
  var currentIndex = 0.obs;
  var userName = "John".obs;
  var quickActions = [].obs;
  var recentContacts = [].obs;
  var recentRecordings = [].obs;
  var clientRecords = <Map<String, String>>[].obs;
  var salesTeam = [].obs;
  var selectedDate = DateTime.now().obs;
  var month = ''.obs;
  var day = ''.obs;
  List<String> months = ['', '', 'Jan', 'Feb', 'March', 'April', 'May', 'Jun', 'July', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'];
  List<String> days = ['', 'Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun'];

  @override
  void onInit() {
    super.onInit();
    fetchUserName();
    fetchRecentContacts();
    fetchRecentRecordings();
    fetchClientRecords();
    addMockData();
    fetchSalesTeam();
    selectedDate.value = DateTime.now();
    day.value = days[selectedDate.value.weekday];
    month.value = months[selectedDate.value.month];
  }



  void changePage(int index) {
    currentIndex.value = index;
  }


  Future<void> showDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: SysColor.tileColor,
            colorScheme: ColorScheme.light(primary: SysColor.tileColor),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null && pickedDate != selectedDate)
      selectedDate.value = pickedDate;
    print(selectedDate.value);
    print(selectedDate.value.weekday);
    print(selectedDate.value.month);
    day.value = days[selectedDate.value.weekday];
    month.value = months[selectedDate.value.month];
    print(selectedDate.value);
    print(month.value);
    print(day.value);
  }

  Color getRandomColor() {
    final random = Random();
    final colors = [SysColor.tileColor, SysColor.buttonColor];
    return colors[random.nextInt(colors.length)];
  }

  Widget placeHolder(String name) {
    List<String> parts = name.split(' ');
    int mid = (parts.length / 2).ceil();
    String firstHalf = parts.sublist(0, mid).join(' ');
    String secondHalf = parts.sublist(mid).join(' ');

    String first = firstHalf.isNotEmpty ? firstHalf[0] : '';
    String second = secondHalf.isNotEmpty ? secondHalf[0] : '';
    return Text(
      "$first$second",
      style: FontStyles.subTitleStyle.copyWith(color: Colors.white, fontSize: 18),
    );
  }

  void fetchUserName() async {
    final response = await http.get(Uri.parse(''));
    if (response.statusCode == 200) {
      userName.value = jsonDecode(response.body)['name'];
    } else {
      // Handle error
    }
  }

  void fetchRecentContacts() async {
    final response = await http.get(Uri.parse(''));
    if (response.statusCode == 200) {
      recentContacts.value = jsonDecode(response.body);
    } else {
      // Handle error
    }
  }

  void fetchRecentRecordings() async {
    final response = await http.get(Uri.parse(''));
    if (response.statusCode == 200) {
      recentRecordings.value = jsonDecode(response.body);
    } else {
      // Handle error
    }
  }

  void fetchClientRecords() async {
    final response = await http.get(Uri.parse(''));
    if (response.statusCode == 200) {
      clientRecords.value = jsonDecode(response.body);
    } else {
      // Handle error
    }
  }

  void addMockData() {
    clientRecords.value = [
      {"Name": "James", "Time": "09:45", "Location": "Lorem", "Message": "Lorem", "Cost": "500"},
      {"Name": "Anna", "Time": "10:15", "Location": "Ipsum", "Message": "Ipsum", "Cost": "300"},
      {"Name": "John", "Time": "11:30", "Location": "Dolor", "Message": "Dolor", "Cost": "450"},
    ];
  }

  void fetchSalesTeam() async {
    final response = await http.get(Uri.parse('YOUR_API_URL'));
    if (response.statusCode == 200) {
      salesTeam.value = jsonDecode(response.body);
    } else {
      // Handle error
    }
  }
}