import 'package:bank_dashboard/tables/datatable.dart';
import 'package:bank_dashboard/responsive.dart';
import 'package:bank_dashboard/tables/deletedatatble.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:bank_dashboard/ui/shared/spacing.dart';
import 'package:bank_dashboard/ui/widgets/main_header.dart';
import 'package:bank_dashboard/ui/widgets/side_menu.dart';
import 'package:bank_dashboard/views/dashboard/dashboard_view.dart';
import 'package:bank_dashboard/views/main/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DeleteFile extends StatelessWidget {
  const DeleteFile({Key? key}) : super(key: key);

  get height => null;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final Size _size = MediaQuery.of(context).size;
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
         // deletedatatable(),
          //         Container(
          //   padding: kEdgeInsetsHorizontalNormal,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     color: Colors.grey,
          //   ),
          //             child: SingleChildScrollView(scrollDirection: Axis.horizontal,
          //               child: SizedBox(
          //                 width: double.infinity,
          //                 height: height * 0.20,
          //               ),
          // ),
          //
          //         ),
                // SideMenu(),



            ]
      ),
        ),
        ),
      ]
      ),
    );
      

    // return Row(
    //     children: [
    //     Expanded(
    //     flex: 3,
    //     child: Column(
    //     children: [
    //     verticalSpaceSmall,
    //     const MainHeader(),
    // verticalSpaceRegular,
    // Container(
    // padding: kEdgeInsetsHorizontalNormal,
    // decoration: BoxDecoration(
    // borderRadius: BorderRadius.circular(10),
    // color: Colors.grey,
    // ),
    // child: SingleChildScrollView(scrollDirection: Axis.horizontal,
    // child: SizedBox(
    // // width: double.infinity,
    // height: height * 0.20,
    // ),
    // ),
    // ),
    // ],),
    // ),
    // ]);
  }
}

