import 'package:flutter/material.dart';
import 'package:prophets_stories/screens/details_screen.dart';
import '../models/read.dart'; // قم بتغيير الاستيراد إلى الملف الصحيح

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({super.key});

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  final List<Read> stories = [
    Read('قصة سيدنا نوح', 'محتوى قصة سيدنا نوح'),
    Read('قصة سيدنا إبراهيم', 'محتوى قصة سيدنا إبراهيم'),
    Read('قصة سيدنا موسى', 'محتوى قصة سيدنا موسى'),
    Read('قصة سيدنا يونس', 'محتوى قصة سيدنا يونس'),
    Read('قصة سيدنا إسماعيل', 'محتوى قصة سيدنا إسماعيل'),
    Read('قصة سيدنا يعقوب', 'محتوى قصة سيدنا يعقوب'),
    Read('قصة سيدنا يوسف', 'محتوى قصة سيدنا يوسف'),
    Read('قصة سيدنا داود', 'محتوى قصة سيدنا داود'),
    Read('قصة سيدنا سليمان', 'محتوى قصة سيدنا سليمان'),
    Read('قصة سيدنا يعقوب', 'محتوى قصة سيدنا يعقوب'),
    Read('قصة سيدنا آدم', 'محتوى قصة سيدنا آدم'),
    Read('قصة سيدنا شعيب', 'محتوى قصة سيدنا شعيب'),
    Read('قصة سيدنا لوط', 'محتوى قصة سيدنا لوط'),
    Read('قصة سيدنا إدريس', 'محتوى قصة سيدنا إدريس'),
    Read('قصة سيدنا هود', 'محتوى قصة سيدنا هود'),
    Read('قصة سيدنا صالح', 'محتوى قصة سيدنا صالح'),
    Read('قصة سيدنا شيث', 'محتوى قصة سيدنا شيث'),
    Read('قصة سيدنا إسحاق', 'محتوى قصة سيدنا إسحاق'),
    Read('قصة سيدنا إسماعيل', 'محتوى قصة سيدنا إسماعيل'),
    Read('قصة سيدنا هارون', 'محتوى قصة سيدنا هارون'),
    Read('قصة سيدنا زكريا', 'محتوى قصة سيدنا زكريا'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'قصص الأنبياء',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsScreen(stories[index])),
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(stories[index].title),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStoryCard(BuildContext context, Read story) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen(story)),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(story.title),
        ),
      ),
    );
  }
}
