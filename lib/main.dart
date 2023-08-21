import 'package:flutter/material.dart';

import 'package:prophets_stories/screens/login_screen.dart';
import 'package:prophets_stories/screens/register_screen.dart';
import 'package:prophets_stories/screens/splash_screen.dart';


void main () =>runApp(MyApp());


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen' : (context) =>SplashScreen(),
        '/login_screen' : (context) =>LoginScreen(),
        '/register_screen' : (context) =>RegisterScreen(),
      },
    );
  }
}
