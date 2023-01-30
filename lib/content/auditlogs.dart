import 'package:bank_dashboard/content/datatable.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:bank_dashboard/ui/shared/spacing.dart';
import 'package:flutter/material.dart';

class AuditLogs extends StatefulWidget {
  const AuditLogs({Key? key}) : super(key: key);

  @override
  State<AuditLogs> createState() => _AuditLogsState();
}

class _AuditLogsState extends State<AuditLogs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(child: SingleChildScrollView(
      child: Column(
        children: [
        verticalSpaceSmall,
        verticalSpaceRegular,
        Container(
            padding: kEdgeInsetsHorizontalNormal,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
          ),
          ),
        datatablewidget(),
        ],
      ),
    )
    ),
    ]
      ),
    );

  }
}
