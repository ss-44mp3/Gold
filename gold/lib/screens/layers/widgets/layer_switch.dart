import 'package:flutter/material.dart';

class LayerSwitch extends StatelessWidget {
  const LayerSwitch({super.key, required this.value, required this.onChanged});
  final bool value;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) => SwitchListTile(title: const Text('صور الأقمار الصناعية'), value: value, onChanged: onChanged);
}