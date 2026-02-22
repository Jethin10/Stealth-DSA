// lib/data/kunal_problems.dart is used in the string interpolation below
import 'lib/data/kunal_problems.dart';

void main() {
  print("Base length: \${kunalProblems.length}");
  print(
    "Zone 1 total problems generated: \${kunalProblems.where((p) => p['id'].toString().startsWith('z1_')).length}",
  );
}
