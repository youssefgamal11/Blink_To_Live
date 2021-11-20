import 'package:blink_to_live/modules/forget_password_email/forget_password_email_screen.dart';
import 'package:blink_to_live/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 38.0, right: 38),
            child: Column(
              children: [
                Image(
                    image:
                        AssetImage('assets/Finally-without-shadow-or-txt.png'),
                    width: 150,
                    height: 150),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Login',
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
                      'username',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 18,
                          color: Color(0xff707070)),
                    ),
                    defaultTextFormField(
                        hintText: 'name@email.com', icon: Icons.person_outline),
                    SizedBox(height: 10),
                    Text(
                      'password',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 18,
                          color: Color(0xff707070)),
                    ),
                    defaultTextFormField(
                        hintText: 'enter your password',
                        icon: CupertinoIcons.eye),
                    SizedBox(height: 15),
                    defaultAuthButton(buttonName: 'Login'),
                    SizedBox(height: 5),
                    GestureDetector(
                        onTap: () {
                          navigateTo(context, ForgetPasswordEmailScreen());
                        },
                        child: Text(
                          'Forget password?',
                          style: TextStyle(color: Color(0xff3E83FC)),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'don\'t have account?  ',
                          style: TextStyle(
                              color: Color(0xff3E83FC),
                              fontFamily: 'Segoe',
                              fontSize: 16),
                        ),
                        GestureDetector(
                            child: Text(
                              'SignUp',
                              style: TextStyle(
                                  color: Color(0xff3E83FC),
                                  fontFamily: 'Segoe',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {})
                      ],
                    ),
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
                          const EdgeInsets.only(left: 45.0, right: 45, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          socialMediaButton(icon: Icons.facebook_outlined),
                          socialMediaButton(icon: Icons.facebook_outlined),
                          socialMediaButton(icon: Icons.facebook_outlined),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
