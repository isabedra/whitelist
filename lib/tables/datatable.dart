import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:flutter/material.dart';

class Datatable extends StatefulWidget {
  const Datatable({Key? key}) : super(key: key);

  @override
  State<Datatable> createState() => _DatatableState();
}

class _DatatableState extends State<Datatable> {
  @override
  Widget build(BuildContext context) {
    return datatablewidget();
  }
}

class datatablewidget extends StatelessWidget {
  const datatablewidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
      child: Container(
        // color: Colors.grey,
          child: DataTable(
            dataTextStyle: TextStyle(color: Colors.black),
            columnSpacing:defaultPadding,
            columns: const [
              DataColumn(
                label: Text("Area",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Birthday",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("CID",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Centername",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Contact",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Flag",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Lenghtofmembership",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Membername",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Newbranchcode",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Newcid",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Recognizeddate",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Dateuploaded",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Unit",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Spousename",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Address",style: TextStyle(color: Colors.black)),
              ),
              DataColumn(
                label: Text("Meetingday",style: TextStyle(color: Colors.black,)),
              ),
            ], rows: const [
            DataRow(cells: [
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
            ]),
            DataRow(cells: [
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
            ]),
            DataRow(cells: [
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
            ]),
            DataRow(cells: [
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
            ]),
            DataRow(cells: [
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
            ]),
            DataRow(cells: [
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
            ]),
            DataRow(cells: [
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
              DataCell(Text('text'),),
            ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),
            // DataRow(cells: [
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            //   DataCell(Text('text'),),
            // ]),


          ],

          ),
        ),
    );
  }
}
