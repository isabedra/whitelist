// import 'package:flutter/material.dart';
//
// class MyDataTable extends StatefulWidget {
//   @override
//   _MyDataTableState createState() => _MyDataTableState();
// }
//
// class _MyDataTableState extends State<MyDataTable> {
//   List<DataRow> _data = [    DataRow(      cells: [        DataCell(Text('Product 1')),        DataCell(Text('Description 1')),        DataCell(Checkbox(value: false, onChanged: (bool value) {})),      ]
//   ),
//     DataRow(
//         cells: [
//           DataCell(Text('Product 2')),
//           DataCell(Text('Description 2')),
//           DataCell(Checkbox(value: false, onChanged: (bool value) {})),
//         ]
//     ),
//     DataRow(
//         cells: [
//           DataCell(Text('Product 3')),
//           DataCell(Text('Description 3')),
//           DataCell(Checkbox(value: false, onChanged: (bool value) {})),
//         ]
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: DataTable(
//         columns: [
//           DataColumn(label: Text('Product')),
//           DataColumn(label: Text('Description')),
//           DataColumn(label: Text('Selected')),
//         ],
//         rows: _data,
//       ),
//     );
//   }
// }