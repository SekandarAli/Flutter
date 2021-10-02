// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes{

  static ThemeData lightTheme(BuildContext context)=> ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
         color: MyThemes.creamColor,
         elevation: 0.0,
         iconTheme: IconThemeData(
           color: Colors.black,
         ), toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
      );

  static ThemeData darkTheme(BuildContext context)=> ThemeData(

        brightness: Brightness.dark,
    
      );

      static Color creamColor = Color(0xfff5f5f5);
      static Color bluishColor = Color(0xff403b48);
}