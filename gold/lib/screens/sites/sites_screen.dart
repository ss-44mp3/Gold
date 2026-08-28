import 'package:flutter/material.dart';
import '../../routes.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_nav.dart';

class SitesScreen extends StatelessWidget {
  const SitesScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const GoldAppBar(title: 'مواقع التنقيب'),
        body: const Center(child: Text('لا توجد مواقع محفوظة بعد.')),
        floatingActionButton: FloatingActionButton(onPressed: () => Navigator.pushNamed(context, AppRoutes.addSite), child: const Icon(Icons.add)),
        bottomNavigationBar: const BottomNav(index: 1),
      );
}