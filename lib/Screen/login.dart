import 'package:bank_dashboard/views/main/main_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme : GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,

          )
      ),
      title: 'Sample Login',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
bool _isobsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xff820000),
                      Color(0xffFFFFFF)
                    ]
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.
              center,
              children: [
                SizedBox(height: 20,),
                Image.asset( 'assets/images/img.png',
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: 15,),
// Text('My Logo',
// style: TextStyle(
//   color: Colors.white,
//   fontSize: 20,
// ),
// ),
// SizedBox(height: 30,),
                Container(
                  height: 300,
                  width: 325,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox( height: 30,),
//     Text('WhiteList',
//       style: TextStyle(
//         fontSize: 35,
//         fontWeight: FontWeight.bold
//       ),
//     ),
// SizedBox(height: 10,),
// Text('Please Login to Your Account',
//   style: TextStyle(
//     fontSize: 15,
//     color: Colors.grey
//   ),
// ),
// SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.black),
                              labelText: 'Email Address',

                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            obscureText: _isobsecure,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.black),
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                color: Colors.black,
                                icon: Icon(
                                    !_isobsecure ? Icons.visibility : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isobsecure = !_isobsecure;
                                  });
                                }),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
// Text('Forget Password',
// style: TextStyle(
//   color: Colors.black
//
// ),
// ),
                            ],

                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff820000),
                            ),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(30.0),),),),
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MainView(),),);},
                            child: Padding (
                              padding: EdgeInsets.all(12.0),
                              child: Text('Login',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ]
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
