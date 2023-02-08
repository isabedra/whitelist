import 'package:bank_dashboard/content/deletefile.dart';
import 'package:bank_dashboard/content/sideheader.dart';
import 'package:bank_dashboard/responsive.dart';
import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:bank_dashboard/ui/shared/spacing.dart';
import 'package:bank_dashboard/ui/shared/text_styles.dart';
import 'package:bank_dashboard/views/dashboard/searchfield.dart';
import 'package:bank_dashboard/views/main/main_viewmodel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

import '../../provider/provider.dart';
import '../shared/edge_insect.dart';

class MainHeader extends ViewModelWidget<MainViewModel> {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, viewModel) {
    final provider = Provider.of<DashboardProvider>(context, listen: false);
    TextEditingController controller = TextEditingController();
    FilePickerResult? result;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(height: 20),
        Text('Upload File', style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20),),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
              color: Colors.lightGreen,
              offset: Offset(
                  5.0,
                  5.0,
              ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ),
          ]
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),

            width: 1400,
            height: 300,
            child: Column(
              children: [
                Container( child: Image.asset(
                    'assets/images/SME_logo.png'
                ) ,height: 200,width: 200,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          // margin: EdgeInsets.only(top: 20),
                          child: Card(
                            child: Container(
                              width: 500,
                              child: Row(
                                children: [
                                  Expanded(child: TextFormField(decoration: InputDecoration(hintText: 'Search'),
                                    style: TextStyle(color: Colors.black),)),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Container(padding: EdgeInsets.all(defaultPadding * 0.75),
                                      margin: EdgeInsets.symmetric(
                                          horizontal: defaultPadding / 2),
                                      decoration: BoxDecoration(color:
                                      Colors.lightGreen,
                                          borderRadius:
                                          const BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: Icon(FontAwesomeIcons.searchengin,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                   Container(
                     child: provider.dashboard == 'UploadFile' ? TextButton(
                  onPressed: ()async{
                      filePicker(context);
                      result = await FilePicker.platform.pickFiles(allowMultiple: true );
                      if (result == null) {
                        print("No file selected");
                      } else {
                        result?.files.forEach((element) {
                          print(element.name);
                          provider.fileName = element.name;
                        });
                      }
                      controller.text = await provider.fileName;
                      print(provider.fileName);
                  },
                      child: Text('Choose File',style: TextStyle(color: Colors.black),)) :
                     provider.dashboard == 'DeleteFile' ? TextButton(onPressed: () async {
                 filePicker(context);
                 result = await FilePicker.platform.pickFiles(allowMultiple: true );
                 if (result == null) {
                     print("No file selected");
                 } else {
                     result?.files.forEach((element) {
                       print(element.name);
                       provider.fileName = element.name;
                     });
                 }
                 controller.text = await provider.fileName;
                 print(provider.fileName);
                     } ,
                     child: Text('Choose File to Delete',style: TextStyle(color: Colors.black),))
                     : Container(),
                   ),
                   provider.dashboard == 'UploadFile' ? Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white70
                      ),
                      width: 200,
                      child: Row(
                        children: [
                          Expanded(
                              child: TextFormField(
                                // enabled: false,
                            controller: controller,
                            onTap: () {

                          },decoration: InputDecoration(hintText: 'UploadFile'),
                            style: TextStyle(color: Colors.black),)),
                          GestureDetector(
                            onTap: (){
                            },
                            child: Container(padding: EdgeInsets.all(defaultPadding * 0.75),
                              margin: EdgeInsets.symmetric(
                                  horizontal: defaultPadding / 2),
                              decoration: BoxDecoration(color:
                              Colors.black,
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(FontAwesomeIcons.fileUpload,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ): provider.dashboard == 'DeleteFile' ? Container(
                 margin: EdgeInsets.only(left: 20),
                 child: Card(
                   child: Container(
                     width: 200,
                     child: Row(
                       children: [
                         Expanded(
                             child: TextFormField(
                               // enabled: false,
                               controller: controller,
                               onTap: () {
                               },decoration: InputDecoration(hintText: 'Deletefile'),
                               style: TextStyle(color: Colors.black),)),
                         GestureDetector(
                           onTap: (){
                           },
                           child: Container(padding: EdgeInsets.all(defaultPadding * 0.75),
                             margin: EdgeInsets.symmetric(
                                 horizontal: defaultPadding / 2),
                             decoration: BoxDecoration(color:
                             Colors.black,
                                 borderRadius:
                                 const BorderRadius.all(Radius.circular(10))
                             ),
                             child: Icon(FontAwesomeIcons.trash,color: Colors.white,),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                   ) : Container(),
                if (!Responsive.isDesktop(context))
                  IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: kBlackColor,
                    ),
                    onPressed: viewModel.controlMenu,
                  ),
                horizontalSpaceSmall,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                ]),

                const Spacer(),




                horizontalSpaceSmall,
                Column(
                  children: [
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

void filePicker(context) async{
  final provider = Provider.of<DashboardProvider>(context, listen: false);
  FilePickerResult? result;

  print(provider.fileName);
}



