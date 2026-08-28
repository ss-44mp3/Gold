import 'package:flutter/material.dart';

class GoldAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GoldAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) => AppBar(title: Text(title));
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}