import 'package:flutter/material.dart';

import 'package:utz/pages/home.dart';
import 'package:utz/pages/login.dart';
import 'package:utz/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        // '/about': (context) => AboutPage(),
      },
    );
  }
}
