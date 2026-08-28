import 'package:flutter/material.dart';
import '../routes.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) => NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) => Navigator.pushReplacementNamed(context, [AppRoutes.map, AppRoutes.sites, AppRoutes.track, AppRoutes.layers, AppRoutes.settings][value]),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.map_outlined), label: 'الخريطة'),
          NavigationDestination(icon: Icon(Icons.place_outlined), label: 'المواقع'),
          NavigationDestination(icon: Icon(Icons.route), label: 'المسار'),
          NavigationDestination(icon: Icon(Icons.layers_outlined), label: 'الطبقات'),
          NavigationDestination(icon: Icon(Icons.settings_outlined), label: 'الإعدادات'),
        ],
      );
}