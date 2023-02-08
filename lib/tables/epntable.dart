import 'package:bank_dashboard/content/epn.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';


class ePNtable extends StatefulWidget {
  const ePNtable({Key? key}) : super(key: key);

  @override
   State<ePNtable> createState() => _ePNtableState();
}

class _ePNtableState extends State<ePNtable> {
  // int numberOfPage=10;
  // int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return ePNtablewidget();
  }
}



class ePNtablewidget extends StatefulWidget {
  const ePNtablewidget({
    Key? key
  }) : super(key: key);

  @override
  State<ePNtablewidget> createState() => _ePNtablewidgetState();
}

class _ePNtablewidgetState extends State<ePNtablewidget> {

  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: 1200,
        height: 500,
        child: Container(
          decoration: BoxDecoration(color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    color: Colors.white,
                    child: DataTable(
                        columnSpacing: defaultPadding,
                        columns: const [
                          DataColumn(label: Text('Name',style: TextStyle(color: Colors.black),)
                          ),
                          DataColumn(label: Text('Accountnuumber',style: TextStyle(color: Colors.black),)
                          ),
                          DataColumn(label: Text('ePN of clients',style: TextStyle(color: Colors.black),)
                          ),
                          DataColumn(label: Text('Download ePN Here',style: TextStyle(color: Colors.black),))
                        ], rows:  [
                      DataRow(cells: [
                        DataCell(Text('Name',style: TextStyle(color: Colors.black),),),
                        DataCell(Text('7331111111',style: TextStyle(color: Colors.black),),),
                        DataCell(Text(
                            'https://drive.google.com/drive/folders/1o97MM8I3rvTU58e9S33IGxM9Be_foe_R',style: TextStyle(color: Colors.black),),),
                        DataCell(TextButton(onPressed: (){}, child: Icon(Icons.download)))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Name',style: TextStyle(color: Colors.black),),),
                        DataCell(Text('7331111111',style: TextStyle(color: Colors.black),),),
                        DataCell(Text(
                            'https://drive.google.com/drive/folders/1o97MM8I3rvTU58e9S33IGxM9Be_foe_R',style: TextStyle(color: Colors.black),),),
                        DataCell(TextButton(onPressed: (){}, child: Icon(Icons.download)))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Name',style: TextStyle(color: Colors.black),),),
                        DataCell(Text('7331111111',style: TextStyle(color: Colors.black),),),
                        DataCell(Text(
                            'https://drive.google.com/drive/folders/1o97MM8I3rvTU58e9S33IGxM9Be_foe_R',style: TextStyle(color: Colors.black),),),
                        DataCell(TextButton(onPressed: (){}, child: Icon(Icons.download)))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Name',style: TextStyle(color: Colors.black),),),
                        DataCell(Text('7331111111',style: TextStyle(color: Colors.black),),),
                        DataCell(Text(
                            'https://drive.google.com/drive/folders/1o97MM8I3rvTU58e9S33IGxM9Be_foe_R',style: TextStyle(color: Colors.black),),),
                        DataCell(TextButton(onPressed: (){}, child: Icon(Icons.download)))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Name',style: TextStyle(color: Colors.black),),),
                        DataCell(Text('7331111111',style: TextStyle(color: Colors.black),),),
                        DataCell(Text(
                            'https://drive.google.com/drive/folders/1o97MM8I3rvTU58e9S33IGxM9Be_foe_R',style: TextStyle(color: Colors.black),),),
                        DataCell(TextButton(onPressed: (){}, child: Icon(Icons.download)))
                      ]), DataRow(cells: [
                        DataCell(Text('Name',style: TextStyle(color: Colors.black),),),
                        DataCell(Text('7331111111',style: TextStyle(color: Colors.black),),),
                        DataCell(Text(
                            'https://drive.google.com/drive/folders/1o97MM8I3rvTU58e9S33IGxM9Be_foe_R',style: TextStyle(color: Colors.black),),),
                        DataCell(TextButton(onPressed: (){}, child: Icon(Icons.download)))
                      ]), DataRow(cells: [
                        DataCell(Text('Name',style: TextStyle(color: Colors.black),),),
                        DataCell(Text('7331111111',style: TextStyle(color: Colors.black),),),
                        DataCell(Text(
                            'https://drive.google.com/drive/folders/1o97MM8I3rvTU58e9S33IGxM9Be_foe_R',style: TextStyle(color: Colors.black),),),
                        DataCell(TextButton(onPressed: (){}, child: Icon(Icons.download)))
                      ]),
                    ]
                    ),
                  ),
                  // Column(
                  //   children: [
                  //     Expanded(child: Container(
                  //       child: pages[currentPage],
                  //     ),
                  //     ),
                  //     NumberPaginator(numberPages: numberOfPages,
                  //       onPageChange: (index){
                  //         setState(() {
                  //           currentPage=index;
                  //         });
                  //       },
                  //     ),
                  //   ],
                  // )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}