import 'package:flutter/material.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_nav.dart';
import '../../widgets/custom_button.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({super.key});
  @override
  State<TrackScreen> createState() => _TrackScreenState();
}
class _TrackScreenState extends State<TrackScreen> {
  bool tracking = false;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const GoldAppBar(title: 'تسجيل المسار'),
        body: Center(child: CustomButton(label: tracking ? 'إيقاف التسجيل' : 'بدء التسجيل', onPressed: () => setState(() => tracking = !tracking))),
        bottomNavigationBar: const BottomNav(index: 2),
      );
}