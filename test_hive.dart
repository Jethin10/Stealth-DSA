import 'dart:convert';
import 'lib/data/kunal_problems.dart';

void main() {
  print("Total problems in kunalProblems list: \${kunalProblems.length}");
  try {
    for (int i = 0; i < kunalProblems.length; i++) {
      final p = kunalProblems[i];
      jsonEncode(p); // Test if it's serializable natively
    }
    print("All problems serialized to JSON successfully!");
  } catch (e) {
    print("Serialization failed: \$e");
  }
}
