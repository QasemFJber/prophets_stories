import 'package:flutter/material.dart';
import '../models/read.dart';

class DetailsScreen extends StatelessWidget {
  final Read hadith;

  const DetailsScreen(this.hadith, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'شاشة التفاصيل',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // صورة جميلة (يمكن استبدال الصورة بصورة حقيقية)
              Image.network(
                  'https://play-lh.googleusercontent.com/oEUl5tiOZpTrUqZrN6rIoMnHys22rZClkkctDTituCcQxTdIGn9EadfJo8y8mkwlUUo=w240-h480-rw',
                  width: 150,
                  height: 150),
              const SizedBox(height: 16),
              // اسم الرواي للحديث
              const Text(
                'اسم الرواي',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              // نص الحديث
              Text(
                hadith.title,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              // محتوى الحديث كاملاً
              Text(
                hadith.body,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
