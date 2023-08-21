import 'package:flutter/material.dart';
class StoriesScreen extends StatefulWidget {
  const StoriesScreen({super.key});

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'قصص الأنبياء',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

    );
  }
}
