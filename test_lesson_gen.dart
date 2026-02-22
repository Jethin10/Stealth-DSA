import 'lib/data/kunal_problems.dart';

void main() {
  print('Zone 2 Lesson:');
  print(kunalProblems.firstWhere((p) => p['zone'] == 2)['lesson']);

  print('\nZone 6 Lesson:');
  print(kunalProblems.firstWhere((p) => p['zone'] == 6)['lesson']);
}
