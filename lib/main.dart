// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/Home_page.dart';
import 'package:flutter_application_1/pages/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main()
{

  runApp(MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
  
      // home : home_page(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily

      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      // initialRoute: "/login",
      routes: {
        "/": (context) => Login_page(),
        "/home": (context) => Home_page(),
        "/login": (context) => Login_page(),
        
      },
    
    );
  }

 
}

 