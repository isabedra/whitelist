import 'package:bank_dashboard/content/epn.dart';
import 'package:bank_dashboard/content/otp.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:flutter/material.dart';


class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTP();
}

class _OTP extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return OTPtable();
  }
}

class OTPtable extends StatelessWidget {
  const OTPtable({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 500,
        width: 1200,
        child: Container(
          color: Colors.grey,
          child: DataTable(
              columnSpacing: defaultPadding,
              columns: const [
                DataColumn(label: Text('Name')
                ),
                DataColumn(label: Text('Lastname')
                ),
                DataColumn(label: Text('OTP send to user')
                ),
              ], rows: const [
            DataRow(cells: [
              DataCell(Text('Name'),),
              DataCell(Text('lastname'),),
              DataCell(Text(
                  '111'),),
            ]),
            DataRow(cells: [
              DataCell(Text('Name'),),
              DataCell(Text('lastname'),),
              DataCell(Text(
                  '2222'),),
            ]),
            DataRow(cells: [
              DataCell(Text('Name'),),
              DataCell(Text('lastname'),),
              DataCell(Text(
                  '3333'),),
            ]),
            DataRow(cells: [
              DataCell(Text('Name'),),
              DataCell(Text('lastname'),),
              DataCell(Text(
                  '4444'),),
            ]),
            DataRow(cells: [
              DataCell(Text('Name'),),
              DataCell(Text('lastname'),),
              DataCell(Text(
                  '5555'),),
            ]), DataRow(cells: [
              DataCell(Text('Name'),),
              DataCell(Text('lastname'),),
              DataCell(Text(
                  '6666'),),
            ]), DataRow(cells: [
              DataCell(Text('Name'),),
              DataCell(Text('lastname'),),
              DataCell(Text(
                  '7777'),),
            ]),


          ]
          ),
        ),
      ),
    );
  }
}