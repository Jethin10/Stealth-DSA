import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stealth_app/data/kunal_problems.dart';

void main() {
  testWidgets('Test Hive serialization of all kunal_problems', (
    WidgetTester tester,
  ) async {
    // Initialize Hive with a temporary directory
    Hive.init('.tmp/hive');

    print("kunalProblems length: \${kunalProblems.length}");

    final box = await Hive.openBox('test_dsa_problems');
    await box.clear();

    try {
      for (int i = 0; i < kunalProblems.length; i++) {
        final p = kunalProblems[i];
        if (i % 100 == 0) print("Seeding \${i} problems...");

        try {
          await box.put(p['id'], p);
        } catch (e) {
          print("Failed at index \$i: \${p['id']}");
          print("Error: \$e");
          break;
        }
      }
      print("Successfully seeded \${box.length} problems!");
    } finally {
      await box.close();
    }
  });
}
