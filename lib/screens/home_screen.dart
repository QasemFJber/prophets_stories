import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: _buildCard(
                      context,
                      Color(0xFFE57373),
                      Color(0xFFFFCDD2),
                      'lib/assets/animation/ee.json',
                      'الأذكار الاسلامية',
                      '/conversation_screen',
                    ),
                  ),
                  SizedBox(width: 16), // مسافة بين البطاقات
                  Expanded(
                    child: _buildCard(
                      context,
                      Color(0xFF81C784),
                      Color(0xFFC8E6C9),
                      'lib/assets/animation/store.json',
                      'قصص الأنبياء',
                      '/stories_screen',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16), // مسافة بين الصفوف
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: _buildCard(
                      context,
                      Color(0xFF64B5F6),
                      Color(0xFFBBDEFB),
                      'lib/assets/animation/read.json',
                      'دروس تعليمية',
                      '/tutorials_screen',
                    ),
                  ),
                  SizedBox(width: 16), // مسافة بين البطاقات
                  Expanded(
                    child: _buildCard(
                      context,
                      Color(0xFFFFD54F),
                      Color(0xFFFFF9C4),
                      'lib/assets/animation/p]de.json',
                      'الأحاديث النبوية',
                      '/remembrance_screen',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, Color borderColor, Color bgColor,
      String animationPath, String cardTitle, String routeName) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        child: Column(
          children: <Widget>[
            Lottie.asset(animationPath, width: 150, height: 150),
            SizedBox(height: 10),
            Text(cardTitle,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
