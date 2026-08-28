import 'package:flutter/material.dart';
import '../../routes.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_nav.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const GoldAppBar(title: 'الإعدادات'),
        body: ListView(children: [
          const ListTile(leading: Icon(Icons.straighten), title: Text('وحدة المسافة'), subtitle: Text('كيلومتر')),
          ListTile(leading: const Icon(Icons.info_outline), title: const Text('حول التطبيق'), onTap: () => Navigator.pushNamed(context, AppRoutes.about)),
        ]),
        bottomNavigationBar: const BottomNav(index: 4),
      );
}