import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stealth_app/main.dart';

void main() {
  testWidgets('Fake syllabus renders successfully', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: StealthDsaApp()));

    // Verify that the fake syllabus lock screen is present
    expect(
      find.text('CS 101 - Introduction to Programming\nSyllabus'),
      findsOneWidget,
    );
  });
}
