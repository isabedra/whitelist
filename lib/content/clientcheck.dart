import 'package:bank_dashboard/tables/datatable.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:bank_dashboard/ui/widgets/main_header.dart';
import 'package:flutter/material.dart';

import '../ui/shared/spacing.dart';

class ClientCheck extends StatefulWidget {
  const ClientCheck({Key? key}) : super(key: key);

  @override
  State<ClientCheck> createState() => _ClientCheckState();
}

class _ClientCheckState extends State<ClientCheck> {

  get height => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(child: SingleChildScrollView(
      child: Column(
        children: [
          const MainHeader(),
        verticalSpaceSmall,
        verticalSpaceRegular,
         Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
    color: Colors.grey,
    ),
           child: SingleChildScrollView(scrollDirection: Axis.vertical,
         ),
    ),
          // datatablewidget(),
    ]
      )
    ),
    ),
    ]

    ),
    );
  }
}
