import 'package:bank_dashboard/Screen/login.dart';
import 'package:bank_dashboard/colors/colorstouse.dart';
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
  bool menu1 = true;
  bool menu2 = false;
  bool menu3 = false;
  bool menu4 = false;
  bool menu5 = false;
  bool menu6 = false;
  bool menu7 = false;
  bool menu8 = false;
  bool menu9 = false;
  bool menu0 = false;

  // bool SideMenuOpen = false;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardProvider>(context);
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,Colors.lightGreen,Colors.limeAccent,
                ]
              )
            ),
            child: Row(
              children: [
                Container( child: Image.asset(
                    'assets/images/SME_logo.png'
                ) ,height: 100,width: 100,),
                Container(child: Expanded(
                  child: Text(
                    'Whitelist',
                    style: kHeading3TextStyle,
                  ),
                ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          DrawerListTile(
            menu: menu1,
            title: "UploadFile",
            icon: Icons.upload_file,
            press: () {setState(() {
              menu1 = true;
              menu2 = false;
              menu3 = false;
              menu4 = false;
              menu5 = false;
              menu6 = false;
              menu7 = false;
              menu8 = false;
              menu9 = false;
              menu0 = false;
              provider.dashboard = 'UploadFile';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            menu: menu2,
            title: "DeleteFile",
            icon: Icons.delete,
            press: () {setState(() {
              menu1 = false;
              menu2 = true;
              menu3 = false;
              menu4 = false;
              menu5 = false;
              menu6 = false;
              menu7 = false;
              menu8 = false;
              menu9 = false;
              menu0 = false;
              provider.dashboard = 'DeleteFile';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            menu: menu3,
            title: "Chatbot Reports",
            icon: Icons.report,
            press: () {setState(() {
              menu1 = false;
              menu2 = false;
              menu3 = true;
              menu4 = false;
              menu5 = false;
              menu6 = false;
              menu7 = false;
              menu8 = false;
              menu9 = false;
              menu0 = false;
              provider.dashboard = 'Reportloan';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            menu: menu4,
            title: "ClientList",
            icon: Icons.people,
            press: () {setState(() {
              menu1 = false;
              menu2 = false;
              menu3 = false;
              menu4 = true;
              menu5 = false;
              menu6 = false;
              menu7 = false;
              menu8 = false;
              menu9 = false;
              menu0 = false;
              provider.dashboard = 'ClientList';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            menu: menu5,
            title: "ClientCheck",
            icon: Icons.checklist,
            press: () {setState(() {
              menu1 = false;
              menu2 = false;
              menu3 = false;
              menu4 = false;
              menu5 = true;
              menu6 = false;
              menu7 = false;
              menu8 = false;
              menu9 = false;
              menu0 = false;
              provider.dashboard = 'ClientCheck';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            menu: menu6,
            title: "ePN",
            icon: Icons.file_present_rounded,
            press: () {setState(() {
              menu1 = false;
              menu2 = false;
              menu3 = false;
              menu4 = false;
              menu5 = false;
              menu6 = true;
              menu7 = false;
              menu8 = false;
              menu9 = false;
              menu0 = false;
              provider.dashboard = 'ePN';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            menu: menu7,
            title: "AuditLogs",
            icon: Icons.switch_account_outlined,
            press: () {setState(() {
              menu1 = false;
              menu2 = false;
              menu3 = false;
              menu4 = false;
              menu5 = false;
              menu6 = false;
              menu7 = true;
              menu8 = false;
              menu9 = false;
              menu0 = false;
              provider.dashboard = 'AuditLogs';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            menu: menu8,
            title: "OTP",
            icon: Icons.mobile_friendly,
            press: () {setState(() {
              menu1 = false;
              menu2 = false;
              menu3 = false;
              menu4 = false;
              menu5 = false;
              menu6 = false;
              menu7 = false;
              menu8 = true;
              menu9 = false;
              menu0 = false;
              provider.dashboard = 'OTP';
            });},
          ),
          SizedBox(height: 5),
          DrawerListTile(
            menu: menu9,
            title: "UserSettings",
            icon: Icons.settings,
            press: () {setState(() {
              menu1 = false;
              menu2 = false;
              menu3 = false;
              menu4 = false;
              menu5 = false;
              menu6 = false;
              menu7 = false;
              menu8 = false;
              menu9 = true;
              menu0 = false;
              provider.dashboard = 'UserSettings';
            });},
          ),
          SizedBox(height: 250),
          DrawerListTile(
            menu: menu0,
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
    required this.menu
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback press;
  final bool menu;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: menu ? Colors.green : Colors.transparent,
          child: ListTile(
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
            // hoverColor: Color(0xFFB2FF59),
          ),
        ),
      ],
    );

  }
}
