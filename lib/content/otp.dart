import 'package:bank_dashboard/tables/tableofotp.dart';
import 'package:bank_dashboard/ui/widgets/main_header.dart';
import 'package:flutter/material.dart';
import '../ui/shared/spacing.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
        children: [
        Expanded(
        child: SingleChildScrollView(
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
    // child: SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: SingleChildScrollView(scrollDirection: Axis.vertical,
    ),
    ),
    Container(child: OTPtable()
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
