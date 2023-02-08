import 'package:bank_dashboard/tables/verification.dart';
import 'package:flutter/material.dart';

class Popup extends StatefulWidget {
  const Popup({Key? key}) : super(key: key);

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [AlertDialog(
          title:
          Text('Please Wait for OTP sending to 09XXXXXXXX9',
            style: TextStyle(color: Colors.black,
            ),
          ),

      ),
      Container(
        height: 50,
        width: 100,
        color: Color(0xFFB2FF59),
        child: ElevatedButton(
                style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
            ),
            onPressed: (){Navigator.pop(context, MaterialPageRoute(builder: (context) => Verification(),),);},
            child: Container(
            )),
      ),
      ],
      ),
    );


  }
}
