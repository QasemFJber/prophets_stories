import 'package:flutter/material.dart';
// import 'package:flutter_youtube/flutter_youtube.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'الدروس التعليمية',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 200, // ارتفاع مقطع الفيديو
            // child: FlutterYoutube.playYoutubeVideoByUrl(
            //   apiKey: "YOUR_YOUTUBE_API_KEY",
            //   videoUrl: "https://www.youtube.com/watch?v=VIDEO_ID",
            //   autoPlay: false, // تشغيل تلقائي
            //   fullScreen: false, // عدم عرض بملء الشاشة
            // ),
          ),
          SizedBox(height: 16),
          Text(
            'عنوان الدرس',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'ملخص عام عن الدرس',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
