import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class GridVisualizer extends StatelessWidget {
  final List<List<dynamic>> grid;
  final Map<String, Color> highlights; // "row,col": Color
  final Map<String, String> pointers; // "row,col": "pointer_name"

  const GridVisualizer({
    super.key,
    required this.grid,
    this.highlights = const {},
    this.pointers = const {},
  });

  @override
  Widget build(BuildContext context) {
    if (grid.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(grid.length, (row) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: List.generate(grid[row].length, (col) {
                final key = '$row,$col';
                final color = highlights[key] ?? AppTheme.surfaceCard;
                final isHighlighted = highlights.containsKey(key);
                final pointerLabel = pointers[key];

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 44,
                      height: 44,
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
                        '${grid[row][col]}',
                        style: AppTheme.codeTextStyle.copyWith(
                          color: isHighlighted
                              ? (color.computeLuminance() > 0.5
                                    ? Colors.black
                                    : Colors.white)
                              : Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    if (pointerLabel != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        pointerLabel,
                        style: AppTheme.codeTextStyle.copyWith(
                          color: AppTheme.accentYellow,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ],
                );
              }),
            ),
          );
        }),
      ),
    );
  }
}
