import 'package:flutter/material.dart';
import 'package:lojas_kawer/views/first_page.dart';
import 'package:lojas_kawer/views/home_page.dart';
import 'package:lojas_kawer/views/login_page.dart';
import 'package:lojas_kawer/views/signup_page.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/first_page",
      routes: {
        "/signup_page" : (context) => SignupPage(),
        "/login_page" : (context) => LoginPage(),
        "/home_page" : (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}