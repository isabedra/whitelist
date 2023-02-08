import 'package:bank_dashboard/provider/provider.dart';
import 'package:bank_dashboard/tables/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../tables/popup.dart';
import '../ui/shared/edge_insect.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class RaisedButton extends StatelessWidget {
  const  RaisedButton ({Key? key, required StatelessWidget child, required Null Function() onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  late final String username;
  late final String email;
  late final String password;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isobsecure1 = true;
  bool _isobsecure2 = true;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(height: 20),
        Text('Registration Form', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
          height: 730,
          width: double.infinity,
          margin: EdgeInsets.all(10),
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
          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: 500,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelStyle:TextStyle(color: Colors.black),
                        hintText: 'Example: Dela Cruz',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 100),
                    width: 200,
                    child: Text('Last Name', style: TextStyle(color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 500,
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                labelStyle:TextStyle(color: Colors.black),
                                hintText: 'Example: Juan'
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 100),
                            width: 200,
                            child: Text('Given Name', style: TextStyle(color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 500,
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                labelStyle:TextStyle(color: Colors.black),
                                hintText: 'Example: G'
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 100),
                            width: 200,
                            child: Text('Middle Initial', style: TextStyle(color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Checkbox(
                                value: _isChecked1,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked1 = value!;
                                    _isChecked2 = false;
                                  });
                                },
                              ),
                              width: 550,
                            ),
                            Container(
                              child: Text('Male', style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 200,
                          child: Column(
                            children: [
                              Text('Gender',style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              child: Checkbox(
                                value: _isChecked2,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked2 = value!;
                                    _isChecked1 = false;
                                  });
                                },
                              ),
                              width: 400,
                            ),
                            Container(
                              child: Text('Female', style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 500,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelStyle:TextStyle(color: Colors.black),
                        hintText: 'Example: JuanDelaCruz@gmail.com',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 100),
                    width: 200,
                    child: Text('Email Address', style: TextStyle(color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 400,
                            child: TextFormField(
                              obscureText: _isobsecure1,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                labelStyle:TextStyle(color: Colors.black),
                                hintText: 'Input Password',
                                suffixIcon: IconButton(
                                    color: Colors.black,
                                    icon: Icon(
                                        !_isobsecure1 ? Icons.visibility : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isobsecure1 = !_isobsecure1;
                                      });
                                    }),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 100),
                            width: 200,
                            child: Text('Password', style: TextStyle(color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 250,
                      ),



                      Column(
                        children: [
                          Container(
                            width: 400,
                            child: TextFormField(
                              obscureText: _isobsecure2,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                labelStyle:TextStyle(color: Colors.black),
                                hintText: 'Input Password',
                                suffixIcon: IconButton(
                                    color: Colors.black,
                                    icon: Icon(
                                        !_isobsecure2 ? Icons.visibility : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isobsecure2 = !_isobsecure2;
                                      });
                                    }
                              ),
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 100),
                            width: 400,
                            child: Text('Confirm Password', style: TextStyle(color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                      SizedBox(
                      height: 20,
                      ),
                      Column(
                        children: [
                          Container(
                          width: 400,
                            child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                            labelStyle:TextStyle(color: Colors.black),
                            hintText: 'Example: 09XXXXXXXX9',
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                              maxLength: 11,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 100),
                            width: 400,
                            child: Text('Mobile Number', style: TextStyle(color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        ],
                      ),
                ]
            ),

          ),
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
            onPressed: ()async{
              await showDialog(context: context, builder: (context) => Popup(),);
               setState((){
                 provider.dashboard ='verification';

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
        )
      ],
    );
  }
}