import 'package:bank_dashboard/content/datatable.dart';
import 'package:flutter/material.dart';

class ClientList extends StatefulWidget {
  const ClientList({Key? key}) : super(key: key);

  @override
  State<ClientList> createState() => _ClientListState();
}

class _ClientListState extends State<ClientList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:[ Expanded(
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
              )
              ),
              datatablewidget(),
            ],

          ),
          ),
        ),
      ]
      ),
    );
  }
}
