import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:flutter/material.dart';

class AuditLogs extends StatefulWidget {
  const AuditLogs({Key? key}) : super(key: key);

  @override
  State<AuditLogs> createState() => _AuditLogsState();
}

class _AuditLogsState extends State<AuditLogs> {
  @override
  Widget build(BuildContext context) {
    return Auditlogswidget();
  }
}

class Auditlogswidget extends StatelessWidget {
  const Auditlogswidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Stack(
    children: [SizedBox(
      width: 1200,
      height: 500,
      child
          : Container(
      margin: const EdgeInsets.all(20),

      decoration: BoxDecoration(
          color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: DataTable(
      columnSpacing: defaultPadding,
      columns: const [
      DataColumn(label: Text('Name')
      ),
      DataColumn(label: Text('Lastname')
      ),
      DataColumn(label: Text('Data&Time')
      ),
      DataColumn(label: Text('UserType'))
      ], rows:  [
      DataRow(cells: [
      DataCell(Text('Dennis'),),
      DataCell(Text('Isabedra'),),
      DataCell(Text('January 31,2023'),),
      DataCell(Text('Admin'),
      ),]
      ),
        DataRow(cells: [
          DataCell(Text('asasa'),),
          DataCell(Text('Isabedra'),),
          DataCell(Text('January 31,2023'),),
          DataCell(Text('Admin'),
          ),]
        ),
        DataRow(cells: [
          DataCell(Text('wewe'),),
          DataCell(Text('Isabedra'),),
          DataCell(Text('January 31,2023'),),
          DataCell(Text('Admin'),
          ),]
        ),
        DataRow(cells: [
          DataCell(Text('reer'),),
          DataCell(Text('Isabedra'),),
          DataCell(Text('January 31,2023'),),
          DataCell(Text('Admin'),
          ),]
        ),


      ]
      ),
      ),
    ),
    ]
    ),
    );
  }
}



