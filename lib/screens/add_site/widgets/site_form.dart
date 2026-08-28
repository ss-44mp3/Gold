import 'package:flutter/material.dart';

class SiteForm extends StatelessWidget {
  const SiteForm({super.key, required this.onSave});
  final VoidCallback onSave;
  @override
  Widget build(BuildContext context) => Column(children: [
        const TextField(decoration: InputDecoration(labelText: 'اسم الموقع')),
        const SizedBox(height: 16),
        const TextField(decoration: InputDecoration(labelText: 'ملاحظات'), maxLines: 3),
        const SizedBox(height: 24),
        FilledButton(onPressed: onSave, child: const Text('حفظ الموقع')),
      ]);
}