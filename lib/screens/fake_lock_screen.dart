import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dsa_dashboard.dart';

class FakeLockScreen extends ConsumerWidget {
  const FakeLockScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7),
      body: SafeArea(
        child: Column(
          children: [
            // ── iOS-style Header Bar ──
            _buildHeaderBar(context),
            // ── PDF Paper Content ──
            Expanded(
              child: Container(
                color: const Color(0xFFE8E8ED),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 6,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 40,
                      ),
                      child: _buildSyllabusContent(),
                    ),
                  ),
                ),
              ),
            ),
            // ── Footer with Page Slider ──
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        border: const Border(
          bottom: BorderSide(color: Color(0xFFD1D1D6), width: 0.5),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          // Back button
          GestureDetector(
            child: Row(
              children: [
                const Icon(
                  Icons.chevron_left,
                  color: Color(0xFF007AFF),
                  size: 28,
                ),
                Text(
                  'Files',
                  style: GoogleFonts.inter(
                    color: const Color(0xFF007AFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          // Center — filename (SECRET TRIGGER)
          Expanded(
            child: Column(
              children: [
                GestureDetector(
                  onLongPress: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const DsaDashboard(),
                      ),
                    );
                  },
                  child: Text(
                    'CS201_Syllabus_Fall2024.pdf',
                    style: GoogleFonts.inter(
                      color: Colors.black87,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '1 of 4',
                  style: GoogleFonts.inter(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          ),

          // Right actions
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Color(0xFF007AFF),
                  size: 20,
                ),
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(
                  Icons.ios_share,
                  color: Color(0xFF007AFF),
                  size: 20,
                ),
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSyllabusContent() {
    final serifBold = GoogleFonts.sourceSerif4(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
    );
    final serifRegular = GoogleFonts.sourceSerif4(
      color: Colors.black87,
      fontSize: 13,
      height: 1.6,
    );
    final sectionTitle = GoogleFonts.sourceSerif4(
      color: Colors.black87,
      fontSize: 12,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Header ──
        Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black87, width: 2)),
          ),
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CS 201: Discrete Structures',
                      style: serifBold.copyWith(fontSize: 22),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Department of Computer Science',
                      style: GoogleFonts.sourceSerif4(
                        color: Colors.black54,
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Fall 2024',
                    style: serifRegular.copyWith(
                      fontSize: 11,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    'Prof. A. Turing',
                    style: serifRegular.copyWith(
                      fontSize: 11,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    'Section 03',
                    style: serifRegular.copyWith(
                      fontSize: 11,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 24),

        // ── Course Description ──
        _sectionHeader('COURSE DESCRIPTION', sectionTitle),
        const SizedBox(height: 8),
        Text(
          'This course introduces the fundamental discrete mathematical structures used in computer science. Topics include logic, set theory, functions, relations, counting techniques, graph theory, and an introduction to proof techniques. Emphasis is placed on understanding the mathematical reasoning behind algorithms and data structures.',
          style: serifRegular,
          textAlign: TextAlign.justify,
        ),

        const SizedBox(height: 24),

        // ── Required Materials ──
        _sectionHeader('REQUIRED MATERIALS', sectionTitle),
        const SizedBox(height: 8),
        _bulletItem(
          'Discrete Mathematics and Its Applications, 8th Edition, by Kenneth H. Rosen.',
          serifRegular,
          italic: true,
        ),
        _bulletItem('Scientific Calculator (Non-programmable).', serifRegular),

        const SizedBox(height: 24),

        // ── Grading Policy ──
        _sectionHeader('GRADING POLICY', sectionTitle),
        const SizedBox(height: 8),
        _gradingRow('Homework Assignments', '30%', serifRegular),
        _gradingRow('Midterm Exam 1', '20%', serifRegular),
        _gradingRow('Midterm Exam 2', '20%', serifRegular),
        _gradingRow(
          'Final Exam (Comprehensive)',
          '30%',
          serifRegular,
          isLast: true,
        ),

        const SizedBox(height: 24),

        // ── Tentative Schedule ──
        _sectionHeader('TENTATIVE SCHEDULE', sectionTitle),
        const SizedBox(height: 12),
        _weekEntry(
          'Week 1',
          'Logic and Proofs',
          'Propositional Logic, Applications of Propositional Logic, Propositional Equivalences.',
          'Readings: Ch 1.1 - 1.3',
          serifRegular,
          serifBold,
        ),
        _weekEntry(
          'Week 2',
          'Predicates and Quantifiers',
          'Nested Quantifiers, Rules of Inference, Introduction to Proofs.',
          'Readings: Ch 1.4 - 1.6',
          serifRegular,
          serifBold,
        ),
        _weekEntry(
          'Week 3',
          'Sets and Functions',
          'Set Operations, Functions, Sequences and Summations.',
          'Readings: Ch 2.1 - 2.4',
          serifRegular,
          serifBold,
        ),
        _weekEntry(
          'Week 4',
          'Algorithms',
          'Growth of Functions, Complexity of Algorithms.',
          'Readings: Ch 3.1 - 3.3',
          serifRegular,
          serifBold,
        ),

        const SizedBox(height: 40),

        // ── Page number ──
        Center(
          child: Container(
            padding: const EdgeInsets.only(top: 16),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xFFEEEEEE))),
            ),
            child: Text(
              'Page 1',
              style: GoogleFonts.sourceSerif4(color: Colors.grey, fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }

  Widget _sectionHeader(String title, TextStyle style) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFDDDDDD))),
      ),
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(title, style: style),
    );
  }

  Widget _bulletItem(String text, TextStyle style, {bool italic = false}) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: style),
          Expanded(
            child: Text(
              text,
              style: italic
                  ? style.copyWith(fontStyle: FontStyle.italic)
                  : style,
            ),
          ),
        ],
      ),
    );
  }

  Widget _gradingRow(
    String label,
    String value,
    TextStyle style, {
    bool isLast = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(
                bottom: BorderSide(
                  color: Color(0xFFDDDDDD),
                  style: BorderStyle.solid,
                  width: 0.5,
                ),
              ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: style),
          Text(value, style: style.copyWith(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _weekEntry(
    String week,
    String topic,
    String description,
    String readings,
    TextStyle regular,
    TextStyle bold,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 56,
            child: Text(
              week,
              style: regular.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(topic, style: bold.copyWith(fontSize: 13)),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: regular.copyWith(fontSize: 11, color: Colors.black54),
                ),
                const SizedBox(height: 2),
                Text(
                  readings,
                  style: regular.copyWith(
                    fontSize: 10,
                    color: const Color(0xFF007AFF),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        border: const Border(
          top: BorderSide(color: Color(0xFFD1D1D6), width: 0.5),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          // Grid view button
          const Icon(Icons.grid_view, color: Colors.grey, size: 22),

          // Page slider
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  // Track
                  Container(
                    height: 3,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD1D1D6),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  // Progress
                  FractionallySizedBox(
                    widthFactor: 0.25,
                    child: Container(
                      height: 3,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  // Thumb
                  Positioned(
                    left: 40,
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFFCCCCCC)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Edit button
          Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF007AFF), width: 2),
            ),
            child: const Icon(Icons.edit, color: Color(0xFF007AFF), size: 14),
          ),
        ],
      ),
    );
  }
}
