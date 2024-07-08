import 'package:erp_layout/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../config/colors.dart';

class ClientRecordTable extends StatelessWidget {
  final RxList<Map<String, String>> data;
  final Function(Map<String, String>) onItemTap;

  ClientRecordTable({required this.data, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Obx(() {
        return Table(
          columnWidths: const {
            5: FixedColumnWidth(25),
          },
          border: TableBorder(
            horizontalInside: BorderSide(color: Colors.grey.shade300),
          ),
          children: [
            // Table Headers
            TableRow(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Text("Name", style: TextStyle(fontSize: 12.5, color: SysColor.tileColor, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Text("Time", style: TextStyle(fontSize: 12.5, color: SysColor.tileColor, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Text("Location", style: TextStyle(fontSize: 12.5, color: SysColor.tileColor, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Text("Message", style: TextStyle(fontSize: 12.5, color: SysColor.tileColor, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Text("Cost", style: TextStyle(fontSize: 12.5, color: SysColor.tileColor, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 5),
                  child: SvgPicture.asset(Paths.sortIcon),
                ),
              ],
            ),
            // Table Rows
            ...data.map((row) {
              return TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: InkWell(
                      onTap: () => onItemTap(row),
                      child: Text(
                        row['Name'] ?? "",
                        style: FontStyles.authTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: InkWell(
                      onTap: () => onItemTap(row),
                      child: Text(
                        row['Time'] ?? "",
                        style: FontStyles.authTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: InkWell(
                      onTap: () => onItemTap(row),
                      child: Text(
                        row['Location'] ?? "",
                        style: FontStyles.authTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: InkWell(
                      onTap: () => onItemTap(row),
                      child: Text(
                        row['Message'] ?? "",
                        style: FontStyles.authTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: InkWell(
                      onTap: () => onItemTap(row),
                      child: Text(
                        row['Cost'] ?? "",
                        style: FontStyles.authTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: null,
                  ),
                ],
              );
            }).toList(),
          ],
        );
      }),
    );
  }
}
