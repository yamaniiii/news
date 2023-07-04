import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/layout/home/home_layout.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "Splash";

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds:2),
        (){
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
        }
    );

    return Scaffold(
      body: Container(
        child: Image.asset(
      "assets/images/splash.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
