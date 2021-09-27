// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class Login_page extends StatelessWidget {
  const Login_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child : Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 3.0,//three times the text
          ),
      ),
    );
  }
}