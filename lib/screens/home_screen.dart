import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  final _drawerController = ZoomDrawerController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'الشاشة الرئيسية',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _drawerController.toggle!();
          },
        ),
      ),
      body: ZoomDrawer(
        controller: _drawerController,
        menuScreen: buildMenu(context),
        mainScreen: buildMainScreen(context),
        borderRadius: 24.0,
        showShadow: true,
        angle: -12.0,
        slideWidth: MediaQuery.of(context).size.width * 0.33,
      ),
    );
  }

  Widget buildMenu(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const UserAccountsDrawerHeader(
          accountName: Text('قاسم عابد'),
          accountEmail: Text('QasemJber@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('lib/assets/images/logo.png'),
          ),
          decoration: BoxDecoration(
            color: Colors.teal, // تعيين لون الخلفية إلى اللون المطلوب
          ),
        ),
        buildMenuItem(
          context,
          icon: Icons.home,
          title: 'الصفحة الرئيسية',
          routeName: '/',
        ),
        buildMenuItem(
          context,
          icon: Icons.message,
          title: 'الرسائل',
          routeName: '/messages',
        ),
        buildMenuItem(
          context,
          icon: Icons.star,
          title: 'المفضلة',
          routeName: '/favorites',
        ),
        buildMenuItem(
          context,
          icon: Icons.settings,
          title: 'الإعدادات',
          routeName: '/settings',
        ),
        buildMenuItem(
          context,
          icon: Icons.exit_to_app,
          title: 'تسجيل الخروج',
          routeName: '/logout',
        ),
      ],
    );
  }

  Widget buildMenuItem(BuildContext context,
      {required IconData icon,
      required String title,
      required String routeName}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          onTap: () {
            _drawerController.toggle!();
            // تنفيذ الانتقال للصفحة المحددة بواسطة routeName
          },
        ),
        const Divider(),
      ],
    );
  }

  Widget buildMainScreen(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Expanded(
                    child: _buildCard(
                      context,
                      const Color(0xFFE57373),
                      const Color(0xFFFFCDD2),
                      'lib/assets/animation/p]de.json',
                      'الأحاديث النبوية',
                      '/conversation_screen',
                    ),
                  ),
                ),
                const SizedBox(width: 16), // مسافة بين البطاقات
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Expanded(
                    child: _buildCard(
                      context,
                      const Color(0xFF81C784),
                      const Color(0xFFC8E6C9),
                      'lib/assets/animation/store.json',
                      'قصص الأنبياء',
                      '/stories_screen',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16), // مسافة بين الصفوف
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Expanded(
                    child: _buildCard(
                      context,
                      const Color(0xFF64B5F6),
                      const Color(0xFFBBDEFB),
                      'lib/assets/animation/read.json',
                      'دروس تعليمية',
                      '/tutorials_screen',
                    ),
                  ),
                ),
                const SizedBox(width: 16), // مسافة بين البطاقات
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Expanded(
                    child: _buildCard(
                      context,
                      const Color(0xFFFFD54F),
                      const Color(0xFFFFF9C4),
                      'lib/assets/animation/ee.json',
                      'الأذكار الاسلامية',
                      '/remembrance_screen',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        child: Column(
          children: <Widget>[
            Lottie.asset(animationPath, width: 150, height: 150),
            const SizedBox(height: 10),
            Text(cardTitle,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
