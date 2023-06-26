import 'package:flutter/material.dart';
import 'package:news/home/home.dart';
import 'package:news/layout/home/home_layout.dart';
import 'package:news/splash_screen.dart';

void main(){
  runApp(
    MyApplication(),
  );

}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName : (context) => SplashScreen(),
          HomeLayout.routeName : (context) => HomeLayout(),
        },

    );
  }
}