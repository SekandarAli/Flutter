// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/Home_page.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Login_page extends StatefulWidget {
  const Login_page({ Key? key }) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {

  String name = "";
  bool onchanged = false;
  
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context)
  async 
  {
    if(_formKey.currentState!.validate())
    {
      setState(() {
        onchanged = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.HomeRoute);
      setState(() {
        onchanged = false;
      });
                       }
  }
  

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child : SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              SizedBox(
                   height: 15.0,
                 ),

              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
                ),

                SizedBox(
                  height: 20.0,
                  ),

              Text(
                "Welcome to Flutter $name",
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
                     validator: (value)
                     {
                       if(value!.isEmpty)
                       {
                         return "Username cannot be null";
                       }
                     },
                        onChanged: (value)
                        {
                          name = value;
                          setState(() {
                            
                          });
                        },
                   ),

                     TextFormField(
                       obscureText: true,
                     decoration: InputDecoration(
                       hintText: "Enter your password",
                       labelText: "Password",
                     ),
                     validator: (value)
                     {
                       if(value!.isEmpty)
                       {
                         return "Password cannot be null";
                       }
                       
                        else if(value.length < 5)
                       {
                         return "Password cannot be less than 5";
                       }
                     },
                   ),
                 
                 SizedBox(
                   height: 35.0,
                 ),

                //  ElevatedButton(
                //    child: Text("Login",
                //    style: TextStyle(
                //      fontSize: 18,
                //      fontWeight: FontWeight.bold,
                //    ),
                //    ),
                //    style: TextButton.styleFrom(minimumSize: Size(150,50)),
                //    onPressed: (){
                //      Navigator.pushNamed(context, MyRoute.HomeRoute);
                //    },
                //  )
                   
                   Material(
                     borderRadius: BorderRadius.circular(onchanged ? 30 : 30),
                      color: Colors.purple,
                     child: InkWell(
                       onTap: () => moveToHome(context),
                     
                       child: AnimatedContainer(
                         duration: Duration(seconds: 1),
                         height: 50,
                         width: onchanged? 50 : 150,
                         alignment: Alignment.center,
                         child: onchanged ? Icon(
                           Icons.done,
                           color: Colors.white,
                           ) : Text(
                           "Login",
                           style: TextStyle(
                             fontSize: 20,
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                     
                        //  decoration: BoxDecoration(
                        ////    //shape: onchanged ? BoxShape.circle : BoxShape.rectangle,
                        //    borderRadius: BorderRadius.circular(onchanged ? 30 : 30),
                        //    color: Colors.red,
                        //  ),
                       ),
                     ),
                   ),
                   ],
                 ),
               )
            ],
          ),
        ),
      ),
    );
  }
}
