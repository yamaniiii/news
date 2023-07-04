import 'package:flutter/material.dart';
import 'package:news/layout/home/home_layout.dart';
import 'package:news/screens/articles/articles_screen.dart';
import 'package:news/shared/style/theme/mytheme.dart';
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
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName : (context) => SplashScreen(),
          HomeLayout.routeName : (context) => HomeLayout(),
        },

    );
  }
}