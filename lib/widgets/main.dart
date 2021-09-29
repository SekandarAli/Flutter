// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/Home_page.dart';
import 'package:flutter_application_1/pages/Login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
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

      theme: MyThemes.lightTheme(context),

      darkTheme: MyThemes.darkTheme(context),

      debugShowCheckedModeBanner: false,
      
      

       initialRoute: "/",
      routes: {
        "/": (context) => Home_page(),
        MyRoute.HomeRoute: (context) => Home_page(),
        MyRoute.LoginRoute: (context) => Login_page(),
        
      },
    
    );
  }

 
}

 