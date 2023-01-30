import 'package:bank_dashboard/Screen/login.dart';
import 'package:bank_dashboard/provider/provider.dart';
import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:bank_dashboard/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  // bool SideMenuOpen = false;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardProvider>(context);
    return Drawer(
      backgroundColor: kTertiaryColor5,
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Container( child: Image.asset(
                    'assets/images/img.png'
                ) ,height: 100,width: 100,),
                Container(child: Expanded(
                  child: Text(
                    'Whitelist',
                    style: kHeading3TextStyle,
                  ),
                ),)
              ],
            ),
          ),
          SizedBox(height: 5),
          DrawerListTile(
            title: "UploadFile",
            icon: Icons.upload_file,
            press: () {setState(() {
              provider.dashboard = 'UploadFile';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            title: "DeleteFile",
            icon: Icons.delete,
            press: () {setState(() {
              provider.dashboard = 'DeleteFile';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            title: "Reportloan",
            icon: Icons.report,
            press: () {setState(() {
              provider.dashboard = 'Reportloan';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            title: "ClientList",
            icon: Icons.people,
            press: () {setState(() {
              provider.dashboard = 'ClientList';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            title: "ClientCheck",
            icon: Icons.checklist,
            press: () {setState(() {
              provider.dashboard = 'ClientCheck';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            title: "ePN",
            icon: Icons.file_present_rounded,
            press: () {setState(() {
              provider.dashboard = 'ePN';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            title: "AuditLogs",
            icon: Icons.switch_account_outlined,
            press: () {setState(() {
              provider.dashboard = 'AuditLogs';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            title: "OTP",
            icon: Icons.mobile_friendly,
            press: () {setState(() {
              provider.dashboard = 'OTP';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            title: "UserSettings",
            icon: Icons.settings,
            press: () {setState(() {
              provider.dashboard = 'UserSettings';
            });},
          ),
          SizedBox(height: 250),
          DrawerListTile(
            title: "Logout",
            icon: Icons.logout,
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),),);},
    ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: kBlackColor,
      ),
      title: Text(
        title,
        style: const TextStyle(color: kBlackColor),
      ),
    );
  }
}
