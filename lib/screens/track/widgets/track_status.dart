import 'package:flutter/material.dart';

class TrackStatus extends StatelessWidget {
  const TrackStatus({super.key, required this.active});
  final bool active;
  @override
  Widget build(BuildContext context) => Text(active ? 'التسجيل جارٍ' : 'جاهز لتسجيل مسار جديد');
}