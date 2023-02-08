import 'package:bank_dashboard/content/usersettings.dart';
import 'package:bank_dashboard/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final _formKey = GlobalKey<FormState>();
  late final String username;
  late final String email;
  late final String password;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isobsecure1 = true;
  bool _isobsecure2 = true;
  OtpFieldController otpController = OtpFieldController();


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardProvider>(context);
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
          alignment: Alignment.topLeft,
            child: TextButton(onPressed: (){
              setState(() {
                provider.dashboard = 'UserSettings' ;
              });
            } , child: Text('Edit Information',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            SizedBox(height: 100),
            Text('Verification Code', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(100),
              padding: EdgeInsets.symmetric(horizontal: 300),
              decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4.0,4.0),
                    )
                  ]
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: OTPTextField(
                        controller: otpController,
                        length: 6,
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceBetween,
                        fieldWidth: 45,
                        fieldStyle: FieldStyle.box,
                        outlineBorderRadius: 15,
                        keyboardType: TextInputType.number,
                        inputFormatter: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        style: TextStyle(fontSize: 17,color: Colors.black),
                        onChanged: (pin) {
                          print("Changed: " + pin);
                        },
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        }),
                  ),
                  Padding (
                    padding: EdgeInsets.all(12.0),
                    child: Text('Please Input OTP',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 300),
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff820000),
                    ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(30.0),),),),
                    onPressed: (){
                      setState(() {

                      });
                    },
                    child: Padding (
                      padding: EdgeInsets.all(12.0),
                      child: Text('Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 350,
                ),

                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff820000),
                    ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(30.0),),),),
                    onPressed: (){
                      setState(() {

                      });
                    },
                    child: Padding (
                      padding: EdgeInsets.all(12.0),
                      child: Text('Resend OTP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
