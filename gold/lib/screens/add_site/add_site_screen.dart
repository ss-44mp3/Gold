import 'package:flutter/material.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/custom_button.dart';

class AddSiteScreen extends StatelessWidget {
  const AddSiteScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const GoldAppBar(title: 'إضافة موقع'),
        body: Padding(padding: const EdgeInsets.all(24), child: Column(children: [
          const TextField(decoration: InputDecoration(labelText: 'اسم الموقع')),
          const SizedBox(height: 16),
          const TextField(decoration: InputDecoration(labelText: 'ملاحظات'), maxLines: 3),
          const SizedBox(height: 24),
          CustomButton(label: 'حفظ الموقع', onPressed: () => Navigator.pop(context)),
        ])),
      );
}