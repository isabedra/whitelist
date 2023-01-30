
import 'package:bank_dashboard/content/reportloan.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:bank_dashboard/ui/shared/spacing.dart';
import 'package:bank_dashboard/ui/widgets/main_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../content/auditlogs.dart';
import '../../content/clientcheck.dart';
import '../../content/clientlist.dart';
import '../../content/epn.dart';
import '../../content/otp.dart';
import '../../content/usersettings.dart';
import '../../provider/provider.dart';
import '../../content/deletefile.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardProvider>(context);
    final height = MediaQuery.of(context).size.height;
    final Size _size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: provider.dashboard == 'UploadFile' ? Column(
            children: [
              verticalSpaceSmall,
              const MainHeader(),
              verticalSpaceRegular,
              Container(
                padding: kEdgeInsetsHorizontalNormal,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: double.infinity,
                height: height * 0.70,
              ),

              // verticalSpaceRegular,
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Responsive(
              //           mobile: TransactionsGridView(
              //             crossAxisCount: _size.width < 650 ? 2 : 4,
              //             childAspectRatio:
              //                 _size.width < 650 && _size.width > 350 ? 1.3 : 1,
              //           ),
              //           tablet: const TransactionsGridView(),
              //           desktop: TransactionsGridView(
              //             childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
              //           ),
              //         ),
              //         verticalSpaceRegular,
              //         verticalSpaceRegular,
              //         if (!Responsive.isDesktop(context))
              //           const SizedBox(height: defaultPadding),
              //         if (Responsive.isMobile(context)) ...[
              //
              //           verticalSpaceRegular,
              //
              //         ],
              //         verticalSpaceRegular,
              //       ],
              //     ),
              //   ),
              // ),
            // ],
          ),
        ),
        ]
    ) :   provider.dashboard == 'DeleteFile' ? DeleteFile() :
          provider.dashboard == 'Reportloan' ? ReportLoan():
          provider.dashboard == 'ClientList' ? ClientList() :
          provider.dashboard == 'ClientCheck' ? ClientCheck():
          provider.dashboard == 'ePN' ? ePN():
          provider.dashboard == 'AuditLogs' ? AuditLogs():
          provider.dashboard == 'OTP' ? OTP():
          provider.dashboard == 'UserSettings' ? Usersettings():
          Container(),

    ),
    ]
    );
  }
}
