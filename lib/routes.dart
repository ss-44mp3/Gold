import 'package:flutter/widgets.dart';
import 'screens/about/about_screen.dart';
import 'screens/add_site/add_site_screen.dart';
import 'screens/layers/layers_screen.dart';
import 'screens/map/map_screen.dart';
import 'screens/settings/settings_screen.dart';
import 'screens/sites/sites_screen.dart';
import 'screens/track/track_screen.dart';

abstract final class AppRoutes {
  static const map = '/';
  static const sites = '/sites';
  static const addSite = '/sites/add';
  static const track = '/track';
  static const layers = '/layers';
  static const settings = '/settings';
  static const about = '/about';
}

final appRoutes = <String, WidgetBuilder>{
  AppRoutes.map: (_) => const MapScreen(),
  AppRoutes.sites: (_) => const SitesScreen(),
  AppRoutes.addSite: (_) => const AddSiteScreen(),
  AppRoutes.track: (_) => const TrackScreen(),
  AppRoutes.layers: (_) => const LayersScreen(),
  AppRoutes.settings: (_) => const SettingsScreen(),
  AppRoutes.about: (_) => const AboutScreen(),
};