// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes{

  static ThemeData lightTheme(BuildContext context)=> ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
         color: Colors.purple,
         elevation: 0.0,
         iconTheme: IconThemeData(
           color: Colors.black,
         ), toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
      );

  static ThemeData darkTheme(BuildContext context)=> ThemeData(

        brightness: Brightness.dark,
    
      );
}