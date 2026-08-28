import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'routes.dart';

class GoldMinerApp extends StatelessWidget {
  const GoldMinerApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Gold Miner App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        initialRoute: AppRoutes.map,
        routes: appRoutes,
      );
}