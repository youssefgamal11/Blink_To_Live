import 'package:blink_to_live/modules/verification/verify_screen.dart';
import 'package:blink_to_live/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 38.0, right: 38),
          child: SafeArea(
            child: Column(
              children: [
                Image(
                    image:
                    AssetImage('assets/Finally-without-shadow 2.png'),
                    width: 130,
                    height: 100),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Container(
                  height: 5,
                  color: Color(0xff3E83FC),
                ),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    'name',
                    style: TextStyle(
                        fontFamily: 'Segoe',
                        fontSize: 18,
                        color: Color(0xff707070)),
                  ),
                  defaultTextFormField(hintText: 'full name',icon: Icons.person_outline),
                    SizedBox(height: 10),
                    Text(
                      'date of birth',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 18,
                          color: Color(0xff707070)),
                    ),
                    defaultTextFormField(hintText: 'your birthday',icon: Icons.calendar_today_outlined),
                    SizedBox(height: 10),
                    Container(
                      height: 80,
                      child: IntlPhoneField(

                        decoration: InputDecoration(
                              filled: true,
                          fillColor: Colors.white,
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius:BorderRadius.circular(15),
                          ),
                        ),
                        initialCountryCode: 'eg',
                      ),
                    ),
                    Text(
                      'password',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 18,
                          color: Color(0xff707070)),
                    ),
                    defaultTextFormField(hintText: 'password',icon: CupertinoIcons.eye),
                    SizedBox(height: 10),
                    Text(
                      'confirm password',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 18,
                          color: Color(0xff707070)),
                    ),
                    defaultTextFormField(hintText: 'confirm password',icon: CupertinoIcons.eye),
                    SizedBox(height: 15),
                    InkWell(child: defaultAuthButton(buttonName: 'Sign Up',),onTap: ()=>navigateTo(context, VerifyScreen()),),
                    SizedBox(height: 5),

                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Color(0xff70707042),
                      height: 1,
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Center(
                        child: Text(
                          'Connect With Social Media',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Segoe',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 30.0, right: 30, top: 10 , bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          socialMediaButton(asset: 'assets/facebook.png'),
                          SizedBox(width: 25,),
                          socialMediaButton(asset: 'assets/Tweter.png'),
                          SizedBox(width: 25,),
                          socialMediaButton(asset: 'assets/g+.png'),
                        ],
                      ),
                    ),
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
