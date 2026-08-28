import 'package:flutter/material.dart';
import '../../widgets/app_bar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(
        appBar: GoldAppBar(title: 'حول التطبيق'),
        body: Padding(padding: EdgeInsets.all(24), child: Text('Gold Miner App\n\nأداة ميدانية لتنظيم مواقع ومسارات التنقيب عن الذهب.')),
      );
}