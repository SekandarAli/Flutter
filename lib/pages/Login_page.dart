// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home_page.dart';

class Login_page extends StatelessWidget {
  const Login_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child : Column(
        children: [
          Image.asset(
            "assets/images/loginpic.png",
            fit: BoxFit.cover
            ),

            SizedBox(
              height: 20.0,
              ),

          Text(
            "Welcome to Flutter",
              style: TextStyle(
                fontSize: 30,
                color: Colors.purple,
              ),
            ),

            
            SizedBox(
              height: 20.0,
              ),

           Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 50.0),
             child: Column(
               children: [

                   TextFormField(
                 decoration: InputDecoration(
                   hintText: "Enter your username",
                   labelText: "Username"
                 ),
               ),

                 TextFormField(
                   obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Enter your password",
                   labelText: "Password",
                 ),
               ),
             
             SizedBox(
               height: 20.0,
             ),

             ElevatedButton(
               child: Text("Login"),
               style: TextButton.styleFrom(),
               onPressed: (){
                 Home_page();
               },
             )
               
               ],
             ),
           )
        ],
      ),
    );
  }
}