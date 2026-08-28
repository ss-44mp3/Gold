import '../../models/layers_settings.dart';

class LayersService {
  LayersSettings settings = const LayersSettings();
  void update(LayersSettings value) => settings = value;
}