import 'lib/data/kunal_problems.dart';

void main() {
  print("Base length: \${kunalProblems.length}");
  int generatedCount = 0;
  for (var p in kunalProblems) {
    if (p['id'].toString().startsWith('z1_')) {
      generatedCount++;
    }
  }
  print("Zone 1 total problems generated: \$generatedCount");
}
