import 'package:flutter/material.dart';

class RemembranceScreen extends StatefulWidget {
  const RemembranceScreen({super.key});

  @override
  State<RemembranceScreen> createState() => _RemembranceScreenState();
}

class _RemembranceScreenState extends State<RemembranceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'الأذكار الاسلامية',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

    );
  }
}
