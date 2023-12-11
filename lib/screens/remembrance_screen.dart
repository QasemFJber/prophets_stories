import 'package:flutter/material.dart';
import 'package:prophets_stories/screens/details_screen.dart';
import '../models/read.dart'; // تأكد من تعديل المسار حسب موقع الموديل

class RemembranceScreen extends StatefulWidget {
  const RemembranceScreen({super.key});

  @override
  State<RemembranceScreen> createState() => _RemembranceScreenState();
}

class _RemembranceScreenState extends State<RemembranceScreen> {
  final List<Read> adhkar = [
    Read('سبحان الله وبحمده', 'محتوى الذكر'),
    Read('الله أكبر', 'محتوى الذكر'),
    Read('لَا إِلٰهَ إِلَّا اللهُ', 'محتوى الذكر'),
    Read('الْحَمْدُ لِلَّهِ', 'محتوى الذكر'),
    Read('أَسْتَغْفِرُ اللهَ', 'محتوى الذكر'),
    Read('حَسْبُنَا اللهُ', 'محتوى الذكر'),
    Read('لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ', 'محتوى الذكر'),
    Read('سُبْحَانَ اللهِ وَبِحَمْدِهِ', 'محتوى الذكر'),
    Read('أَعُوذُ بِاللهِ مِنَ الشَّيْطَانِ الرَّجِيمِ', 'محتوى الذكر'),
    Read('لَا إِلٰهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ', 'محتوى الذكر'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'الأذكار الاسلامية',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: adhkar.length,
        itemBuilder: (context, index) {
          return _buildDhikrCard(context, adhkar[index]);
        },
      ),
    );
  }

  Widget _buildDhikrCard(BuildContext context, Read dhikr) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen(dhikr)),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                dhikr.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                dhikr.body,
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
