import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../theme/app_theme.dart';

class JigsawBlock extends StatelessWidget {
  final String code;
  final String blockId;

  const JigsawBlock({super.key, required this.code, required this.blockId});

  @override
  Widget build(BuildContext context) {
    return Draggable<String>(
      data: blockId,
      feedback: Material(
        color: Colors.transparent,
        child: _buildBlock(context, isDragging: true),
      ),
      childWhenDragging: Opacity(opacity: 0.3, child: _buildBlock(context)),
      onDragStarted: () {
        HapticFeedback.selectionClick();
      },
      child: _buildBlock(context),
    );
  }

  Widget _buildBlock(BuildContext context, {bool isDragging = false}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: AppTheme.glassChip(isDragging: isDragging),
          child: Text(
            code,
            style: AppTheme.codeTextStyle.copyWith(
              color: isDragging ? Colors.white : AppTheme.matrixGreen,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}

class JigsawDropZone extends StatelessWidget {
  final String placeholder;
  final String? droppedBlockCode;
  final Function(String) onAccept;

  const JigsawDropZone({
    super.key,
    required this.placeholder,
    this.droppedBlockCode,
    required this.onAccept,
  });

  @override
  Widget build(BuildContext context) {
    return DragTarget<String>(
      builder: (context, candidateData, rejectedData) {
        final isHovering = candidateData.isNotEmpty;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          constraints: const BoxConstraints(minHeight: 42, minWidth: 120),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: isHovering
              ? AppTheme.dashedZoneActive()
              : droppedBlockCode != null
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppTheme.matrixGreen.withValues(alpha: 0.08),
                  border: Border.all(
                    color: AppTheme.matrixGreen.withValues(alpha: 0.4),
                  ),
                )
              : AppTheme.dashedZone(),
          child: droppedBlockCode != null
              ? Text(
                  droppedBlockCode!,
                  style: AppTheme.codeTextStyle.copyWith(
                    color: AppTheme.matrixGreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.white.withValues(alpha: 0.2),
                      size: 16,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Drop logic here',
                      style: AppTheme.codeTextStyle.copyWith(
                        color: Colors.white.withValues(alpha: 0.25),
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
        );
      },
      onWillAcceptWithDetails: (details) {
        HapticFeedback.selectionClick();
        return true;
      },
      onAcceptWithDetails: (details) {
        onAccept(details.data);
      },
    );
  }
}
