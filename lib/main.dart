import 'package:flutter/material.dart';
import 'package:prophets_stories/screens/conversations_screen.dart';
import 'package:prophets_stories/screens/details_screen.dart';

import 'package:prophets_stories/screens/login_screen.dart';
import 'package:prophets_stories/screens/pageview_screen.dart';
import 'package:prophets_stories/screens/register_screen.dart';
import 'package:prophets_stories/screens/remembrance_screen.dart';
import 'package:prophets_stories/screens/splash_screen.dart';
import 'package:prophets_stories/screens/stories_screen.dart';
import 'package:prophets_stories/screens/tutorials_screen.dart';


void main () =>runApp(MyApp());


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen' : (context) =>SplashScreen(),
        '/login_screen' : (context) =>LoginScreen(),
        '/register_screen' : (context) =>RegisterScreen(),
        '/page_view_screen' : (context) =>PageViewScreen(),
        '/conversation_screen' : (context) =>ConversationScreen(),
        '/remembrance_screen' : (context) =>RemembranceScreen(),
        '/stories_screen' : (context) =>StoriesScreen(),
        '/tutorials_screen' : (context) =>TutorialScreen(),
      },
    );
  }
}
