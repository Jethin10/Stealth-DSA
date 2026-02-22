import 'dart:math';
import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class IsometricCommitGraph extends StatelessWidget {
  const IsometricCommitGraph({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random(42);
    final List<int> commitData = List.generate(36, (index) {
      if (index % 7 == 0 || index % 11 == 0) return 0;
      return random.nextInt(4) + 1;
    });

    return Container(
      decoration: AppTheme.cardDecoration(),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ACTIVITY LOG', style: AppTheme.labelStyle),
                  const SizedBox(height: 4),
                  Text(
                    '// Consistent commits detected',
                    style: AppTheme.codeTextStyle.copyWith(
                      fontSize: 10,
                      color: AppTheme.syntaxComment,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.matrixGreen.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: AppTheme.matrixGreen.withValues(alpha: 0.2),
                  ),
                ),
                child: Text(
                  'git push -f origin master',
                  style: AppTheme.codeTextStyle.copyWith(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Commit grid
          Center(
            child: Wrap(
              spacing: 3,
              runSpacing: 3,
              children: commitData.map((intensity) {
                return Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: _getColorForIntensity(intensity),
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.05),
                      width: 0.5,
                    ),
                    boxShadow: intensity > 2
                        ? [
                            BoxShadow(
                              color: AppTheme.matrixGreen.withValues(
                                alpha: 0.15 * intensity,
                              ),
                              blurRadius: intensity * 2.0,
                              spreadRadius: intensity * 0.3,
                            ),
                          ]
                        : [],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Color _getColorForIntensity(int intensity) {
    if (intensity == 0) {
      return Colors.white.withValues(alpha: 0.05);
    }
    return Color.lerp(
      AppTheme.pureBlack,
      AppTheme.matrixGreen,
      (intensity / 4).clamp(0.2, 1.0),
    )!;
  }
}
