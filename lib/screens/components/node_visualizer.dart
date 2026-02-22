import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class NodeVisualizer extends StatelessWidget {
  final List<dynamic> nodes;
  final Map<int, Color> highlights;
  final Map<int, String> pointers;
  final bool isTree; // If true, adds simple connecting lines differently

  const NodeVisualizer({
    super.key,
    required this.nodes,
    this.highlights = const {},
    this.pointers = const {},
    this.isTree = false,
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
        spacing: 0,
        runSpacing: 24,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: List.generate(nodes.length * 2 - 1, (index) {
          // Even indexes are nodes, odd indexes are arrows
          if (index.isOdd) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.grey,
                size: 20,
              ),
            );
          }

          final nodeIndex = index ~/ 2;
          final color = highlights[nodeIndex] ?? AppTheme.surfaceCard;
          final isHighlighted = highlights.containsKey(nodeIndex);
          final pointerLabel = pointers[nodeIndex];

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (pointerLabel != null) ...[
                Text(
                  pointerLabel,
                  style: AppTheme.codeTextStyle.copyWith(
                    color: AppTheme.accentYellow,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Icon(
                  Icons.arrow_downward,
                  color: AppTheme.accentYellow,
                  size: 16,
                ),
                const SizedBox(height: 4),
              ],
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 52,
                height: 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle, // Lists and Trees use circles
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
                  '${nodes[nodeIndex]}',
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
            ],
          );
        }),
      ),
    );
  }
}
