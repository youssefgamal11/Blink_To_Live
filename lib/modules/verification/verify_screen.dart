import 'package:blink_to_live/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class VerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 38.0, right: 38),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  image: AssetImage('assets/Finally-without-shadow-or-txt.png'),
                  width: 150,
                  height: 80),
              Text(
                'Verify Your Account',
                style: TextStyle(
                    fontFamily: 'Segoe',
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ), SizedBox(
                height: 15,
              ),
              Text(
                'Enter the 4 digit pin that we sent to :',
                style: TextStyle(fontFamily: 'Segoe', fontSize: 19),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '+0000000000',
                style: TextStyle(fontFamily: 'Segoe', fontSize: 19,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                hintCharacter: '*',
                keyboardType: TextInputType.phone,
                hintStyle: TextStyle(fontSize: 25.0,),
                pinTheme: PinTheme(
                  inactiveColor: Colors.grey,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10.0),
                  fieldHeight: 50,
                  fieldWidth: 60,
                  activeFillColor: Colors.white,
                ), onChanged:(v){}, appContext:context,

              ),
              GestureDetector(
                  child: Text(
                    'Resend Code',
                    style: TextStyle(
                        color: Color(0xff3E83FC),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                  }),
            SizedBox(height: 200.0,),
              defaultAuthButton(buttonName: 'Verify')
            ],
          ),
        ),
      ),
    );
  }
}
