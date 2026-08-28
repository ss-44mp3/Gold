import 'package:flutter/material.dart';
import '../../widgets/bottom_nav.dart';
import '../../widgets/app_bar.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const GoldAppBar(title: 'خريطة التنقيب'),
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.map, size: 72, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 16), const Text('ستظهر الخريطة ومواقع التنقيب هنا.'),
        ])),
        bottomNavigationBar: const BottomNav(index: 0),
      );
}