import 'package:flutter/material.dart';

class MyTheme {

  static Color primaryColor = Color(0Xff39A552); //اخضر

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: true,
      toolbarHeight: 70,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 22,
      ),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30),
        ),
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
      bodySmall: TextStyle(fontSize: 22, color: Colors.white,),
      titleSmall: TextStyle(fontSize: 16, color: Colors.white,),
      titleMedium: TextStyle(fontSize: 10, color: Color(0Xff79828B),),
      titleLarge: TextStyle(fontSize: 14, color: Color(0XffA3A3A3),),
      headlineMedium: TextStyle(fontWeight: FontWeight.bold , fontSize: 24 , color: Colors.black,),
    ),
  );
}