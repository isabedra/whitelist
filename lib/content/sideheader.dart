import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class SideHeader extends StatefulWidget {
  const SideHeader({Key? key}) : super(key: key);

  @override
  State<SideHeader> createState() => _SideHeaderState();
}

class _SideHeaderState extends State<SideHeader> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardProvider>(context);
    return Container(
      child: provider.dashboard == 'UploadFile' ? TextButton(onPressed: (){}, child: Text('Excel',style: TextStyle(fontSize: 20),)) :
      provider.dashboard == 'DeleteFile' ? TextButton(onPressed: (){}, child: Text('Copy File',style: TextStyle(fontSize: 20),)) :
      provider.dashboard == 'Reportloan' ? TextButton(onPressed: (){}, child: Text('Download Templates',style: TextStyle(fontSize: 20),)) :
      provider.dashboard == 'ClientList' ? TextButton(onPressed: (){}, child: Text('Download',style: TextStyle(fontSize: 20),)) :
      provider.dashboard == 'ClientCheck' ? TextButton(onPressed: (){}, child: Text('CheckClient',style: TextStyle(fontSize: 20),)) :
      provider.dashboard == 'ePN' ? TextButton(onPressed: (){}, child: Text('Download All ePN',style: TextStyle(fontSize: 20),)) :
      provider.dashboard == 'AuditLogs' ? TextButton(onPressed: (){}, child: Text('Download All Logs',style: TextStyle(fontSize: 20),)) :
      provider.dashboard == 'OTP' ? TextButton(onPressed: (){}, child: Text('DownloanOTP',style: TextStyle(fontSize: 20),)) :
      provider.dashboard == 'UserSettings' ? TextButton(onPressed: (){}, child: Text('Import User',style: TextStyle(fontSize: 20),)) :
      Container(),
    );
  }
}
