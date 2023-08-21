import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),() {
      Navigator.pushNamedAndRemoveUntil(context, '/page_view_screen', (route) => false);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            Lottie.asset('lib/assets/animation/p]de.json'),
            Text('مرحبا بكم في تطبيق ذكر و هدي',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
          ],
        ),

      ),
    );
  }
}
