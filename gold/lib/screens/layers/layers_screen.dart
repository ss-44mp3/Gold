import 'package:flutter/material.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_nav.dart';

class LayersScreen extends StatefulWidget {
  const LayersScreen({super.key});
  @override
  State<LayersScreen> createState() => _LayersScreenState();
}
class _LayersScreenState extends State<LayersScreen> {
  bool satellite = false;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const GoldAppBar(title: 'طبقات الخريطة'),
        body: SwitchListTile(title: const Text('صور الأقمار الصناعية'), value: satellite, onChanged: (value) => setState(() => satellite = value)),
        bottomNavigationBar: const BottomNav(index: 3),
      );
}