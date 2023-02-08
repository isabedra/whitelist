import 'package:bank_dashboard/tables/datatable.dart';
import 'package:bank_dashboard/ui/widgets/main_header.dart';
import 'package:flutter/material.dart';

import '../ui/shared/spacing.dart';

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
              verticalSpaceSmall,
              const MainHeader(),
              verticalSpaceRegular,
              Container(
          // decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10),
          //   color: Colors.grey,
              ),
              // datatablewidget(),
            ],

          ),
          ),
        ),
      ]
      ),
    );
  }
}
