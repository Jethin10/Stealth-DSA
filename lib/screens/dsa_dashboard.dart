import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'fake_lock_screen.dart';
import 'components/jigsaw_engine.dart';
import 'components/commit_graph.dart';
import '../theme/app_theme.dart';
import 'interactive_lesson.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/database_service.dart';

class DsaDashboard extends ConsumerStatefulWidget {
  const DsaDashboard({super.key});

  @override
  ConsumerState<DsaDashboard> createState() => _DsaDashboardState();
}

class _DsaDashboardState extends ConsumerState<DsaDashboard> {
  int _currentNavIndex = 0;
  int? _selectedZone;
  Map<String, dynamic>? _activeProblem;
  Map<String, String> _droppedBlocks = {}; // Generalized drop zones
  bool isSolved = false;
  bool _showHint = false;
  bool _showingLesson = false;

  DatabaseService get db => ref.read(databaseProvider);

  void _triggerPanic() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const FakeLockScreen()),
    );
  }

  void _openZone(int zone) {
    setState(() {
      _selectedZone = zone;
      _activeProblem = null;
      _currentNavIndex = 1; // Switch to Practice tab
    });
  }

  void _openProblem(Map<String, dynamic> problem) {
    setState(() {
      _activeProblem = problem;
      _droppedBlocks = {};
      isSolved = db.isProblemSolved(problem['id']);
      _showingLesson = !isSolved;
      _showHint = false;
    });
  }

  void _goBack() {
    setState(() {
      if (_activeProblem != null) {
        _activeProblem = null;
      } else if (_selectedZone != null) {
        _selectedZone = null;
        _currentNavIndex = 0;
      }
    });
  }

  void _onBlockDropped(String zoneId, String blockId) {
    if (_activeProblem == null) return;

    final problem = _activeProblem!;
    final isHard = db.hardMode && problem.containsKey('hardTemplate');
    final blocks = Map<String, dynamic>.from(
      isHard ? problem['hardBlocks'] : problem['blocks'],
    );
    final solution = Map<String, dynamic>.from(
      isHard ? problem['hardSolution'] : problem['solution'],
    );

    setState(() {
      _droppedBlocks[zoneId] = blocks[blockId];

      if (blockId == solution[zoneId]) {
        HapticFeedback.heavyImpact();
      } else {
        HapticFeedback.vibrate();
      }

      // Check if all zones are correctly filled
      bool allCorrect = true;
      for (final key in solution.keys) {
        if (_droppedBlocks[key] != blocks[solution[key]]) {
          allCorrect = false;
          break;
        }
      }

      if (allCorrect) {
        isSolved = true;
        HapticFeedback.heavyImpact();
        db.markProblemSolved(problem['id']);
      }
    });
  }

  void _nextProblem() {
    if (_selectedZone == null) return;
    final problems = db.getProblemsForZone(_selectedZone!);
    final currentIndex = problems.indexWhere(
      (p) => p['id'] == _activeProblem?['id'],
    );
    if (currentIndex < problems.length - 1) {
      _openProblem(problems[currentIndex + 1]);
    } else {
      // Go back to problem list
      setState(() => _activeProblem = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.pureBlack,
      body: SafeArea(
        child: Column(
          children: [
            _buildStatusBar(),
            Expanded(child: _buildCurrentView()),
            _buildBottomNav(),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentView() {
    if (_activeProblem != null) {
      if (_showingLesson) {
        return InteractiveLesson(
          problem: _activeProblem!,
          onLessonComplete: () {
            setState(() => _showingLesson = false);
          },
        );
      } else {
        return _buildPuzzleView();
      }
    }
    if (_selectedZone != null) return _buildProblemList();

    switch (_currentNavIndex) {
      case 0:
        return _buildSkillTreeView();
      case 1:
        return _buildAllProblemsView();
      case 2:
        return _buildRankView();
      case 3:
        return _buildProfileView();
      default:
        return _buildSkillTreeView();
    }
  }

  // ── Status Bar ──
  Widget _buildStatusBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: AppTheme.pureBlack.withValues(alpha: 0.9),
        border: Border(
          bottom: BorderSide(color: Colors.white.withValues(alpha: 0.05)),
        ),
      ),
      child: Row(
        children: [
          // PANIC: long-press on "SYSTEM.ONLINE" text
          GestureDetector(
            onLongPress: _triggerPanic,
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppTheme.matrixGreen,
                    shape: BoxShape.circle,
                    boxShadow: AppTheme.neonGlow(intensity: 0.6),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'SYSTEM.ONLINE',
                  style: AppTheme.labelStyle.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Spacer(),
          // Hard Mode Toggle
          Row(
            children: [
              Text(
                'HARD',
                style: AppTheme.labelStyle.copyWith(
                  fontSize: 9,
                  color: db.hardMode ? AppTheme.errorRed : Colors.grey,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(width: 4),
              SizedBox(
                height: 20,
                width: 34,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Switch(
                    value: db.hardMode,
                    onChanged: (val) {
                      setState(() {
                        db.setHardMode(val);
                      });
                    },
                    activeColor: AppTheme.errorRed,
                    activeTrackColor: AppTheme.errorRed.withValues(alpha: 0.3),
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey.withValues(alpha: 0.2),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Row(
            children: [
              Icon(
                Icons.local_fire_department,
                color: AppTheme.matrixGreen,
                size: 16,
              ),
              const SizedBox(width: 4),
              Text(
                '42',
                style: AppTheme.codeTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Row(
            children: [
              const Icon(Icons.diamond, color: Color(0xFF3B82F6), size: 16),
              const SizedBox(width: 4),
              Text(
                '${db.getTotalXp()}',
                style: AppTheme.codeTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: const Color(0xFF3B82F6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ── Skill Tree (Map Tab) ──
  Widget _buildSkillTreeView() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const IsometricCommitGraph(),
          const SizedBox(height: 32),
          _buildSkillTree(),
        ],
      ),
    );
  }

  Widget _buildSkillTree() {
    final List<Map<String, dynamic>> zones = [];
    final titles = [
      'Foundations',
      'Flow of Program',
      'Java Syntax',
      'Methods',
      'Arrays',
      'Binary Search',
      'Sorting',
      'Time Complexity',
      'Math',
      'Recursion',
      'Backtracking',
      'OOP',
      'Linked List',
      'Stacks/Queues',
      'Trees',
      'Hashmaps',
      'Dynamic Programming',
      'Heaps',
      'Graphs',
      'Advanced Magic',
    ];
    final colors = [
      AppTheme.matrixGreen,
      const Color(0xFF3B82F6),
      const Color(0xFF8B5CF6),
      const Color(0xFFF59E0B),
      AppTheme.errorRed,
      Colors.teal,
      Colors.indigo,
      Colors.amber,
      Colors.deepOrange,
      Colors.cyan,
      Colors.pink,
      Colors.lime,
      AppTheme.matrixGreen,
      const Color(0xFF3B82F6),
      const Color(0xFF8B5CF6),
      const Color(0xFFF59E0B),
      AppTheme.errorRed,
      Colors.teal,
      Colors.indigo,
      Colors.amber,
    ];

    for (int i = 0; i < 20; i++) {
      zones.add({
        'zone': i + 1,
        'icon': Icons.security,
        'title': 'Zone ${i + 1}: ${titles[i]}',
        'subtitle': 'Kunal Kushwaha Bootcamp',
        'color': colors[i],
        'unlocked': true,
        'offset': i % 2 == 0 ? 40.0 : -40.0,
      });
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 40,
          bottom: 40,
          child: Container(
            width: 3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppTheme.matrixGreen.withValues(alpha: 0.3),
                  Colors.grey.withValues(alpha: 0.1),
                ],
              ),
            ),
          ),
        ),
        Column(
          children: zones.map((z) {
            final stats = db.getZoneStats(z['zone'] as int);
            final progress = stats['total']! > 0
                ? stats['solved']! / stats['total']!
                : 0.0;
            return Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: _buildZoneNode(
                zone: z['zone'] as int,
                icon: z['icon'] as IconData,
                title: z['title'] as String,
                subtitle: '${stats['solved']}/${stats['total']} solved',
                progress: progress,
                color: z['color'] as Color,
                isUnlocked: z['unlocked'] as bool,
                xOffset: z['offset'] as double,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildZoneNode({
    required int zone,
    required IconData icon,
    required String title,
    required String subtitle,
    required double progress,
    required Color color,
    required bool isUnlocked,
    double xOffset = 0,
  }) {
    return Transform.translate(
      offset: Offset(xOffset, 0),
      child: GestureDetector(
        onTap: isUnlocked ? () => _openZone(zone) : null,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                if (isUnlocked && progress > 0)
                  Container(
                    width: 88,
                    height: 88,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: AppTheme.neonGlow(
                        color: color,
                        intensity: 0.2,
                      ),
                    ),
                  ),
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.surfaceDark,
                    border: Border.all(
                      color: isUnlocked ? color : Colors.grey.shade800,
                      width: 3,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 64,
                        height: 64,
                        child: CircularProgressIndicator(
                          value: progress,
                          strokeWidth: 3,
                          color: color,
                          backgroundColor: Colors.white.withValues(alpha: 0.05),
                        ),
                      ),
                      Icon(
                        icon,
                        color: isUnlocked ? color : Colors.grey.shade600,
                        size: 28,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: AppTheme.cardDecoration(radius: 8),
              child: Column(
                children: [
                  Text(
                    title,
                    style: AppTheme.codeTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: AppTheme.labelStyle.copyWith(
                      letterSpacing: 0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Problem List (after tapping a zone) ──
  Widget _buildProblemList() {
    final problems = db.getProblemsForZone(_selectedZone!);
    final zoneNames = {
      1: 'Foundations',
      2: 'Arrays & Memory',
      3: 'Binary Search',
      4: 'Sorting',
    };

    return Column(
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white70),
                onPressed: _goBack,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ZONE $_selectedZone', style: AppTheme.labelStyle),
                    Text(
                      zoneNames[_selectedZone!] ?? '',
                      style: AppTheme.headingStyle.copyWith(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Problem groups
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: _buildGroupedProblems(problems),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildGroupedProblems(List<Map<String, dynamic>> problems) {
    final groups = <String, List<Map<String, dynamic>>>{};
    for (final p in problems) {
      final sub = p['subcategory']?.toString() ?? 'General';
      groups.putIfAbsent(sub, () => []).add(p);
    }

    final widgets = <Widget>[];
    groups.forEach((subcategory, subProblems) {
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 12),
          child: Row(
            children: [
              Container(
                width: 4,
                height: 16,
                decoration: BoxDecoration(
                  color: AppTheme.matrixGreen,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                subcategory.toUpperCase(),
                style: AppTheme.labelStyle.copyWith(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 10,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Divider(
                  color: Colors.white.withValues(alpha: 0.05),
                  thickness: 1,
                ),
              ),
            ],
          ),
        ),
      );

      for (final p in subProblems) {
        final solved = p['solved'] == true;
        widgets.add(
          GestureDetector(
            onTap: () => _openProblem(p),
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.surfaceCard,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: solved
                      ? AppTheme.matrixGreen.withValues(alpha: 0.3)
                      : AppTheme.cardBorder,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: solved
                          ? AppTheme.matrixGreen.withValues(alpha: 0.15)
                          : Colors.white.withValues(alpha: 0.05),
                    ),
                    child: Icon(
                      solved ? Icons.check_circle : Icons.play_circle_outline,
                      color: solved ? AppTheme.matrixGreen : Colors.grey,
                      size: 22,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          p['title'] ?? '',
                          style: AppTheme.codeTextStyle.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            _difficultyBadge(p['difficulty'] ?? 'Easy'),
                            const SizedBox(width: 8),
                            Text(
                              '${p['xp']} XP',
                              style: AppTheme.codeTextStyle.copyWith(
                                fontSize: 10,
                                color: const Color(0xFF3B82F6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                ],
              ),
            ),
          ),
        );
      }
    });

    return widgets;
  }

  Widget _difficultyBadge(String difficulty) {
    final color = difficulty == 'Easy'
        ? AppTheme.matrixGreen
        : difficulty == 'Medium'
        ? AppTheme.accentYellow
        : AppTheme.errorRed;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        difficulty,
        style: AppTheme.codeTextStyle.copyWith(
          fontSize: 9,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // ── All Problems (Practice Tab) ──
  Widget _buildAllProblemsView() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Practice', style: AppTheme.headingStyle),
          const SizedBox(height: 4),
          Text(
            'Choose a zone to start solving problems',
            style: AppTheme.codeTextStyle.copyWith(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 20),
          ...[1, 2, 3, 4].map((zone) {
            final stats = db.getZoneStats(zone);
            final zoneNames = {
              1: 'Foundations',
              2: 'Arrays & Memory',
              3: 'Binary Search',
              4: 'Sorting',
            };
            final zoneIcons = {
              1: Icons.terminal,
              2: Icons.grid_on,
              3: Icons.search,
              4: Icons.sort,
            };
            final zoneColors = {
              1: AppTheme.matrixGreen,
              2: const Color(0xFF3B82F6),
              3: const Color(0xFF8B5CF6),
              4: const Color(0xFFF59E0B),
            };
            return GestureDetector(
              onTap: () => _openZone(zone),
              child: Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(16),
                decoration: AppTheme.cardDecoration(),
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: zoneColors[zone]!.withValues(alpha: 0.15),
                      ),
                      child: Icon(
                        zoneIcons[zone],
                        color: zoneColors[zone],
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Zone $zone: ${zoneNames[zone]}',
                            style: AppTheme.codeTextStyle.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${stats['solved']}/${stats['total']} problems solved',
                            style: AppTheme.codeTextStyle.copyWith(
                              color: Colors.grey,
                              fontSize: 11,
                            ),
                          ),
                          const SizedBox(height: 6),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: LinearProgressIndicator(
                              value: stats['total']! > 0
                                  ? stats['solved']! / stats['total']!
                                  : 0.0,
                              backgroundColor: Colors.white.withValues(
                                alpha: 0.05,
                              ),
                              color: zoneColors[zone],
                              minHeight: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  // ── Rank View ──
  Widget _buildRankView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.leaderboard,
            color: AppTheme.matrixGreen.withValues(alpha: 0.3),
            size: 64,
          ),
          const SizedBox(height: 16),
          Text('Leaderboard', style: AppTheme.headingStyle),
          const SizedBox(height: 8),
          Text(
            'Coming soon — solve more problems to rank up!',
            style: AppTheme.codeTextStyle.copyWith(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: AppTheme.cardDecoration(),
            child: Column(
              children: [
                Text(
                  'Your Stats',
                  style: AppTheme.codeTextStyle.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  '${db.getTotalXp()} XP Earned',
                  style: AppTheme.codeTextStyle.copyWith(
                    color: AppTheme.matrixGreen,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ── Profile View ──
  Widget _buildProfileView() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppTheme.surfaceCard,
              border: Border.all(color: AppTheme.matrixGreen, width: 2),
            ),
            child: const Icon(
              Icons.person,
              color: AppTheme.matrixGreen,
              size: 40,
            ),
          ),
          const SizedBox(height: 12),
          Text('Stealth Coder', style: AppTheme.headingStyle),
          const SizedBox(height: 4),
          Text(
            'Level 5 • ${db.getTotalXp()} XP',
            style: AppTheme.codeTextStyle.copyWith(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 24),
          ...[1, 2, 3, 4].map((zone) {
            final stats = db.getZoneStats(zone);
            final zoneNames = {
              1: 'Foundations',
              2: 'Arrays & Memory',
              3: 'Binary Search',
              4: 'Sorting',
            };
            return Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: AppTheme.cardDecoration(radius: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Zone $zone: ${zoneNames[zone]}',
                    style: AppTheme.codeTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '${stats['solved']}/${stats['total']}',
                    style: AppTheme.codeTextStyle.copyWith(
                      color:
                          stats['solved'] == stats['total'] &&
                              stats['total']! > 0
                          ? AppTheme.matrixGreen
                          : Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  // ── Puzzle View ──
  Widget _buildPuzzleView() {
    final p = _activeProblem!;

    return Column(
      children: [
        // Header with back button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white70),
                onPressed: _goBack,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      p['difficulty'] ?? '',
                      style: AppTheme.labelStyle.copyWith(
                        color: (p['difficulty'] == 'Easy')
                            ? AppTheme.matrixGreen
                            : AppTheme.accentYellow,
                        letterSpacing: 2,
                      ),
                    ),
                    Text(
                      p['title'] ?? '',
                      style: AppTheme.headingStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              if (!isSolved)
                IconButton(
                  icon: Icon(
                    Icons.lightbulb,
                    color: _showHint ? AppTheme.accentYellow : Colors.grey,
                  ),
                  onPressed: () => setState(() => _showHint = !_showHint),
                ),
            ],
          ),
        ),

        // Description + Hint
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF3B82F6).withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFF3B82F6).withValues(alpha: 0.2),
                  ),
                ),
                child: Text(
                  p['description'] ?? '',
                  style: AppTheme.codeTextStyle.copyWith(
                    color: Colors.white70,
                    fontSize: 12,
                    height: 1.4,
                  ),
                ),
              ),
              if (_showHint) ...[
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppTheme.accentYellow.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppTheme.accentYellow.withValues(alpha: 0.2),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.lightbulb,
                        color: AppTheme.accentYellow,
                        size: 16,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          p['hint'] ?? '',
                          style: AppTheme.codeTextStyle.copyWith(
                            color: AppTheme.accentYellow,
                            fontSize: 11,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),

        const SizedBox(height: 8),

        // Code editor
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppTheme.codeBg,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppTheme.cardBorder),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.03),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white.withValues(alpha: 0.05),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      _dot(const Color(0xFFFF5F57)),
                      const SizedBox(width: 6),
                      _dot(const Color(0xFFFFBD2E)),
                      const SizedBox(width: 6),
                      _dot(const Color(0xFF28CA41)),
                      const Spacer(),
                      Text(
                        'Solution.java',
                        style: AppTheme.codeTextStyle.copyWith(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildCodeLines(p),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 8),

        // Solved or Blocks panel
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: isSolved
              ? _buildSolvedBanner()
              : _buildBlocksPanel(
                  db.hardMode && p.containsKey('hardBlocks')
                      ? Map<String, dynamic>.from(p['hardBlocks'])
                      : Map<String, dynamic>.from(p['blocks']),
                ),
        ),
      ],
    );
  }

  List<Widget> _buildCodeLines(Map<String, dynamic> problem) {
    final bool isHard = db.hardMode && problem.containsKey('hardTemplate');
    final template =
        ((isHard ? problem['hardTemplate'] : problem['codeTemplate'])
            as String?) ??
        '';
    final lines = template.split('\n');
    int dropZoneIndex = 0;

    final widgets = <Widget>[];
    for (final line in lines) {
      if (line.contains('___')) {
        // Handle multiple blanks in one line
        final parts = line.split('___');
        final rowChildren = <Widget>[];

        for (int i = 0; i < parts.length; i++) {
          if (parts[i].isNotEmpty) {
            rowChildren.add(
              Text(
                parts[i],
                style: AppTheme.codeTextStyle.copyWith(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),
            );
          }

          if (i < parts.length - 1) {
            dropZoneIndex++;
            final zoneId = '$dropZoneIndex';
            final droppedData = _droppedBlocks[zoneId];

            rowChildren.add(
              JigsawDropZone(
                placeholder: '?',
                droppedBlockCode: droppedData,
                onAccept: (id) => _onBlockDropped(zoneId, id),
              ),
            );
          }
        }

        widgets.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: rowChildren),
            ),
          ),
        );
      } else {
        widgets.add(_codeLine(line));
      }
    }
    return widgets;
  }

  Widget _dot(Color color) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.5),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _codeLine(String text) {
    final isComment = text.trimLeft().startsWith('//');
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Text(
        text,
        style: AppTheme.codeTextStyle.copyWith(
          fontSize: 13,
          color: isComment ? AppTheme.syntaxComment : Colors.white70,
        ),
      ),
    );
  }

  Widget _buildBlocksPanel(Map<String, dynamic> blocks) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        border: Border(
          top: BorderSide(color: Colors.white.withValues(alpha: 0.05)),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'DRAG BLOCKS INTO THE CODE',
            style: AppTheme.labelStyle.copyWith(color: Colors.grey.shade500),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: blocks.entries.map((entry) {
              return JigsawBlock(code: entry.value, blockId: entry.key);
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSolvedBanner() {
    return Container(
      key: const ValueKey('solved'),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.matrixGreen.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.matrixGreen.withValues(alpha: 0.3)),
        boxShadow: AppTheme.neonGlow(intensity: 0.15),
      ),
      child: Column(
        children: [
          const Icon(Icons.check_circle, color: AppTheme.matrixGreen, size: 48),
          const SizedBox(height: 8),
          Text(
            'PROBLEM SOLVED!',
            style: AppTheme.codeTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            '+${_activeProblem?['xp'] ?? 0} XP',
            style: AppTheme.codeTextStyle.copyWith(
              fontSize: 14,
              color: const Color(0xFF3B82F6),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _nextProblem,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.matrixGreen,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Next Problem →',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Bottom Nav ──
  Widget _buildBottomNav() {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        border: Border(
          top: BorderSide(color: Colors.white.withValues(alpha: 0.05)),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(Icons.map, 'Map', 0),
          _navItem(Icons.code, 'Practice', 1),
          _navItem(Icons.leaderboard, 'Rank', 2),
          _navItem(Icons.person, 'Profile', 3),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int index) {
    final isActive = _currentNavIndex == index;
    return GestureDetector(
      onTap: () => setState(() {
        _currentNavIndex = index;
        _selectedZone = null;
        _activeProblem = null;
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isActive
              ? AppTheme.matrixGreen.withValues(alpha: 0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isActive ? AppTheme.matrixGreen : Colors.grey.shade600,
              size: 22,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isActive ? AppTheme.matrixGreen : Colors.grey.shade600,
                fontSize: 10,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
