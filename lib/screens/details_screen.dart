import 'package:flutter/material.dart';
class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'الشاشة الرئيسية',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

    );
  }
}
