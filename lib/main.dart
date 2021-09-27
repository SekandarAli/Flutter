// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/Home_page.dart';
import 'package:flutter_application_1/pages/Login_page.dart';

void main()
{

  runApp(App());
}

class  App extends StatelessWidget {
  const App ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
  
      // home : home_page(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      initialRoute: "/home",
      routes: {
        "/": (context) => Login_page(),
        "/home": (context) => Home_page(),
        "/login": (context) => Login_page(),
        
      },
    
    );
  }

 
}

 