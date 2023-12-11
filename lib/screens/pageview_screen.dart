import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:prophets_stories/screens/home_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ذكر و هدي',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: <Widget>[
                _buildPage('lib/assets/animation/ee.json',
                    'استمتع بلحظات الصفاء والتأمل في ظل القرآن والسنة النبوية'),
                _buildPage('lib/assets/animation/rr.json',
                    'استرخِ وتأمل في رحمة الله وعظمته في عبادتك اليومية'),
                _buildPage('lib/assets/animation/ww.json',
                    'استكشف جمال التواصل مع الله من خلال الصلوات والأذكار'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                if (_currentPageIndex != 0)
                  FloatingActionButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    },
                    backgroundColor: Colors.teal,
                    child: const Icon(Icons.arrow_forward),
                  ),
                Row(
                  children: List.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentPageIndex == index
                            ? Colors.teal
                            : Colors.grey,
                      ),
                    );
                  }),
                ),
                if (_currentPageIndex != 2)
                  FloatingActionButton(
                    onPressed: () {
                      _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    },
                    backgroundColor: Colors.teal,
                    child: const Icon(Icons.arrow_back),
                  ),
                if (_currentPageIndex == 2)
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    backgroundColor: Colors.teal,
                    child: const Icon(Icons.check),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String animationPath, String pageTitle) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Lottie.asset(animationPath, width: 350, height: 350),
          const SizedBox(height: 20),
          Text(pageTitle,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl),
        ],
      ),
    );
  }
}
