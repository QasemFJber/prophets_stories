import 'package:flutter/material.dart';
import 'package:prophets_stories/screens/conversations_screen.dart';

import 'package:prophets_stories/screens/login_screen.dart';
import 'package:prophets_stories/screens/pageview_screen.dart';
import 'package:prophets_stories/screens/register_screen.dart';
import 'package:prophets_stories/screens/remembrance_screen.dart';
import 'package:prophets_stories/screens/splash_screen.dart';
import 'package:prophets_stories/screens/stories_screen.dart';
import 'package:prophets_stories/screens/tutorials_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen': (context) => const SplashScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/register_screen': (context) => const RegisterScreen(),
        '/page_view_screen': (context) => const PageViewScreen(),
        '/conversation_screen': (context) => const ConversationScreen(),
        '/remembrance_screen': (context) => const RemembranceScreen(),
        '/stories_screen': (context) => const StoriesScreen(),
        '/tutorials_screen': (context) => const TutorialScreen(),
      },
    );
  }
}
