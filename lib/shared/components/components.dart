import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultTextFormField({String? hintText, IconData? icon}) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Container(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: Icon(
              icon,
              size: 25,
              color: Color(0xff4F4F4F),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.blue),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    ),
  );
}

Widget defaultAuthButton({required String buttonName, function}) {
  return Container(
    width: double.infinity,
    height: 47,
    decoration: BoxDecoration(
        color: Color(0xff3E83FC), borderRadius: BorderRadius.circular(10)),
    child: Center(
        child: Text(
      buttonName,
      style: TextStyle(fontFamily: 'Segoe', color: Colors.white, fontSize: 17),
    )),
  );
}

navigateTo(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

Widget socialMediaButton({required String asset}) {
  return InkWell(
    onTap: () {},
    child: Stack(
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Image(width: 20, image: AssetImage(asset)),
          ),
        ),
      ],
    ),
  );
}
