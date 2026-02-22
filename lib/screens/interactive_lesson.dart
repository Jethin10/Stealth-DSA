import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../theme/app_theme.dart';
import 'components/array_visualizer.dart';
import 'components/grid_visualizer.dart';
import 'components/node_visualizer.dart';

class InteractiveLesson extends StatefulWidget {
  final Map<String, dynamic> problem;
  final VoidCallback onLessonComplete;

  const InteractiveLesson({
    super.key,
    required this.problem,
    required this.onLessonComplete,
  });

  @override
  State<InteractiveLesson> createState() => _InteractiveLessonState();
}

class _InteractiveLessonState extends State<InteractiveLesson> {
  int _currentStep = 0;

  late final List<Map<String, dynamic>> _steps;

  @override
  void initState() {
    super.initState();
    if (widget.problem['lesson'] != null) {
      final rawSteps = widget.problem['lesson'] as List;
      _steps = rawSteps.map((step) {
        if (step is Map) {
          return step.map((key, value) => MapEntry(key.toString(), value));
        }
        return <String, dynamic>{};
      }).toList();
    } else {
      _steps = _fallbackSteps;
    }
  }

  // Generic fallback if problem doesn't have a custom lesson payload
  final List<Map<String, dynamic>> _fallbackSteps = [
    {
      'type': 'text',
      'title': 'Interactive Lesson',
      'content':
          'Specific interactive visualizer for this problem is being generated. Tap next to proceed to the code puzzle.',
      'data': [1, 2, 3],
      'highlights': <int, Color>{},
      'pointers': <int, String>{},
    },
  ];

  int? _selectedQuizOption;
  bool _quizAnswered = false;

  void _nextStep() {
    HapticFeedback.lightImpact();
    if (_currentStep < _steps.length - 1) {
      setState(() {
        _currentStep++;
        _selectedQuizOption = null;
        _quizAnswered = false;
      });
    } else {
      widget.onLessonComplete();
    }
  }

  void _prevStep() {
    if (_currentStep > 0) {
      HapticFeedback.lightImpact();
      setState(() {
        _currentStep--;
        _selectedQuizOption = null;
        _quizAnswered = false;
      });
    }
  }

  void _handleQuizAnswer(int index, int correctAnswer) {
    if (_quizAnswered) return;
    setState(() {
      _selectedQuizOption = index;
      _quizAnswered = true;
    });
    if (index == correctAnswer) {
      HapticFeedback.heavyImpact();
    } else {
      HapticFeedback.vibrate();
    }
  }

  @override
  Widget build(BuildContext context) {
    final step = _steps[_currentStep];
    final progress = (_currentStep + 1) / _steps.length;

    return Container(
      color: AppTheme.pureBlack,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Progress Bar
          const SizedBox(height: 16),
          Row(
            children: [
              IconButton(
                onPressed: widget.onLessonComplete,
                icon: const Icon(Icons.close, color: Colors.grey),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.white.withValues(alpha: 0.1),
                    color: AppTheme.matrixGreen,
                    minHeight: 8,
                  ),
                ),
              ),
              const SizedBox(width: 48),
            ],
          ),
          const SizedBox(height: 24),

          // Content
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: step['type'] == 'quiz'
                  ? _buildQuizStep(step)
                  : _buildInteractiveStep(step),
            ),
          ),

          // Controls
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              children: [
                if (_currentStep > 0)
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: BorderSide(
                          color: Colors.white.withValues(alpha: 0.2),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: _prevStep,
                      child: const Text(
                        'Back',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                else
                  const Spacer(),
                const SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.matrixGreen,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: (step['type'] == 'quiz' && !_quizAnswered)
                        ? null
                        : _nextStep,
                    child: Text(
                      _currentStep == _steps.length - 1
                          ? 'Start Practice 🚀'
                          : 'Next →',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInteractiveStep(Map<String, dynamic> step) {
    return Column(
      key: ValueKey(_currentStep),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          step['title'],
          style: AppTheme.headingStyle.copyWith(fontSize: 24),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF3B82F6).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFF3B82F6).withValues(alpha: 0.3),
            ),
          ),
          child: Text(
            step['content'],
            style: AppTheme.codeTextStyle.copyWith(
              color: Colors.white,
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ),
        const SizedBox(height: 32),
        if (step.containsKey('data')) _buildVisualizer(step),
      ],
    );
  }

  Widget _buildVisualizer(Map<String, dynamic> step) {
    final type = step['visualizer'] ?? 'array';

    if (type == 'grid') {
      return GridVisualizer(
        grid: List<List<dynamic>>.from(step['data']),
        highlights:
            (step['highlights'] as Map?)?.map<String, Color>(
              (key, value) => MapEntry(key.toString(), Color(value as int)),
            ) ??
            <String, Color>{},
        pointers: Map<String, String>.from(step['pointers'] ?? {}),
      );
    } else if (type == 'node') {
      return NodeVisualizer(
        nodes: List<dynamic>.from(step['data']),
        highlights:
            (step['highlights'] as Map?)?.map<int, Color>(
              (key, value) => MapEntry(
                key is int ? key : int.tryParse(key.toString()) ?? 0,
                Color(value as int),
              ),
            ) ??
            <int, Color>{},
        pointers: Map<int, String>.from(step['pointers'] ?? {}),
      );
    } else {
      // Default array
      return ArrayVisualizer(
        data: List<dynamic>.from(step['data']),
        highlights:
            (step['highlights'] as Map?)?.map<int, Color>(
              (key, value) => MapEntry(
                key is int ? key : int.tryParse(key.toString()) ?? 0,
                Color(value as int),
              ),
            ) ??
            <int, Color>{},
        pointers: Map<int, String>.from(step['pointers'] ?? {}),
      );
    }
  }

  Widget _buildQuizStep(Map<String, dynamic> step) {
    final options = step['options'] as List<String>;
    final answer = step['answer'] as int;

    return Column(
      key: ValueKey(_currentStep),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.school, color: AppTheme.accentYellow, size: 28),
            const SizedBox(width: 8),
            Text(
              step['title'],
              style: AppTheme.headingStyle.copyWith(
                color: AppTheme.accentYellow,
                fontSize: 24,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Text(
          step['question'],
          style: AppTheme.codeTextStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 32),
        ...List.generate(options.length, (index) {
          bool isSelected = _selectedQuizOption == index;
          bool isCorrect = index == answer;

          Color bgColor = AppTheme.surfaceCard;
          Color borderColor = Colors.white.withValues(alpha: 0.1);

          if (_quizAnswered) {
            if (isCorrect) {
              bgColor = AppTheme.matrixGreen.withValues(alpha: 0.2);
              borderColor = AppTheme.matrixGreen;
            } else if (isSelected && !isCorrect) {
              bgColor = AppTheme.errorRed.withValues(alpha: 0.2);
              borderColor = AppTheme.errorRed;
            }
          } else if (isSelected) {
            borderColor = Colors.white;
          }

          return GestureDetector(
            onTap: () => _handleQuizAnswer(index, answer),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: borderColor,
                  width: isSelected ? 2 : 1,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: borderColor),
                    ),
                    child: Text(
                      '${index + 1}',
                      style: AppTheme.codeTextStyle.copyWith(fontSize: 12),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    options[index],
                    style: AppTheme.codeTextStyle.copyWith(fontSize: 16),
                  ),
                  const Spacer(),
                  if (_quizAnswered && isCorrect)
                    const Icon(Icons.check_circle, color: AppTheme.matrixGreen)
                  else if (_quizAnswered && isSelected && !isCorrect)
                    const Icon(Icons.close, color: AppTheme.errorRed),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
