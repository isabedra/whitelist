import 'package:bank_dashboard/tables/epntable.dart';
import 'package:bank_dashboard/ui/widgets/main_header.dart';
import 'package:flutter/material.dart';

import '../ui/shared/edge_insect.dart';
import '../ui/shared/spacing.dart';

class ePN extends StatefulWidget {
  const ePN({Key? key}) : super(key: key);

  @override
  State<ePN> createState() => _ePnState();
}

class _ePnState extends State<ePN> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
        children: [
        Expanded(
        child: SingleChildScrollView(
        child: Column(
        children: [
        verticalSpaceSmall,
          const MainHeader(),
        verticalSpaceRegular,
        Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
    color: Colors.grey,
    ),
    // child: SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: SingleChildScrollView(scrollDirection: Axis.vertical,
    ),
    ),
          // ePNtablewidget()
    ]
        ),
    ),
    ),
    ]
        )
    );
  }
}

