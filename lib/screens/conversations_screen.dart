import 'package:flutter/material.dart';
import 'package:prophets_stories/screens/details_screen.dart';
import '../models/read.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  final List<Read> hadiths = [
    Read('أبو هريرة', 'قال رسول الله صلى الله عليه وسلم: "من صام رمضان إيمانًا واحتسابًا، غفر له ما تقدم من ذنبه"'),
    Read('عائشة', 'قال رسول الله صلى الله عليه وسلم: "من لا يرحم، لا يرحم"'),
    Read('عبد الله بن عمر', 'قال رسول الله صلى الله عليه وسلم: "كانوا إذا رأوا القمر من أواخر الشهر قالوا: تغربت الحاشية، وطلعت البدر"'),
    Read('عبد الله بن مسعود', 'قال رسول الله صلى الله عليه وسلم: "من أحب لقاء الله، أحب الله لقاءه"'),
    Read('عبد الله بن عباس', 'قال رسول الله صلى الله عليه وسلم: "انطلقوا بذكر الله والصلاة والسلام على النبي، فإنها تؤكل ما تأكل النار الحطب"'),
    Read('جابر بن عبد الله', 'قال رسول الله صلى الله عليه وسلم: "من لا يشكر الناس، لا يشكر الله"'),
    Read('أبو بَكْر الصّدّيق', 'قال رسول الله صلى الله عليه وسلم: "أفضل الصّدقة عند الله صدقة السرّ"'),
    Read('عمر بن الخطاب', 'قال رسول الله صلى الله عليه وسلم: "إنّما الأعمال بالنّيّات، وإنّما لكلّ امرئ ما نوى"'),
    Read('عثمان بن عفّان', 'قال رسول الله صلى الله عليه وسلم: "من بنى مسجدًا يبتغي به وجه الله، بنى الله له مثله في الجنة"'),
    Read('علي بن أبي طالب', 'قال رسول الله صلى الله عليه وسلم: "أنا مدينة العلم وعلي بابها"'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'الأحاديث النبوية',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: hadiths.length,
        itemBuilder: (context, index) {
          return _buildHadithCard(context, hadiths[index]);
        },
      ),
    );
  }

  Widget _buildHadithCard(BuildContext context, Read hadith) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen(hadith)),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end, // اتجاه النص لليمين
            children: [
              Text(
                hadith.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right, // محاذاة النص لليمين
              ),
              SizedBox(height: 8),
              Text(
                hadith.body,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.right, // محاذاة النص لليمين
              ),
            ],
          ),
        ),
      ),
    );
  }
}

