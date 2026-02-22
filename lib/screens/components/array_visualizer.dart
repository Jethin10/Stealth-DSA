import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class ArrayVisualizer extends StatelessWidget {
  final List<dynamic> data;
  final Map<int, Color> highlights;
  final Map<int, String> pointers;

  const ArrayVisualizer({
    super.key,
    required this.data,
    this.highlights = const {},
    this.pointers = const {},
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
      ),
      child: Wrap(
        spacing: 8,
        runSpacing: 16,
        alignment: WrapAlignment.center,
        crossAxisAlignment:
            WrapCrossAlignment.start, // Align top so arrows go below
        children: List.generate(data.length, (index) {
          final color = highlights[index] ?? AppTheme.surfaceCard;
          final isHighlighted = highlights.containsKey(index);
          final pointerLabels = pointers.entries
              .where((e) => e.key == index)
              .map((e) => e.value)
              .toList();

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '$index',
                style: AppTheme.codeTextStyle.copyWith(
                  color: Colors.grey.shade600,
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 4),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isHighlighted
                        ? color.withValues(alpha: 0.8)
                        : Colors.white.withValues(alpha: 0.2),
                    width: isHighlighted ? 2 : 1,
                  ),
                  boxShadow: isHighlighted
                      ? AppTheme.neonGlow(color: color, intensity: 0.3)
                      : null,
                ),
                child: Text(
                  '${data[index]}',
                  style: AppTheme.codeTextStyle.copyWith(
                    color: isHighlighted
                        ? (color.computeLuminance() > 0.5
                              ? Colors.black
                              : Colors.white)
                        : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              if (pointerLabels.isNotEmpty) ...[
                const SizedBox(height: 8),
                const Icon(
                  Icons.arrow_upward,
                  color: AppTheme.accentYellow,
                  size: 16,
                ),
                const SizedBox(height: 2),
                ...pointerLabels.map(
                  (label) => Text(
                    label,
                    style: AppTheme.codeTextStyle.copyWith(
                      color: AppTheme.accentYellow,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ],
          );
        }),
      ),
    );
  }
}
