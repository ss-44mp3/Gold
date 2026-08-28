import 'package:flutter_test/flutter_test.dart';
import 'package:gold_miner_app/app.dart';

void main() {
  testWidgets('يفتح التطبيق على شاشة الخريطة', (tester) async {
    await tester.pumpWidget(const GoldMinerApp());
    expect(find.text('خريطة التنقيب'), findsOneWidget);
  });
}