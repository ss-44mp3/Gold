import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) => ListTile(leading: Icon(icon), title: Text(title), onTap: onTap);
}