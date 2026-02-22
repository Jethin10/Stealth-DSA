import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart'; // Added for Colors
import 'package:flutter/foundation.dart';

import 'api_service.dart';
import 'kunal_problems.dart'; // Expanded problem set

final databaseProvider = Provider<DatabaseService>((ref) {
  throw UnimplementedError('DatabaseService must be initialized before use');
});

class DatabaseService {
  late Box _problemBox;
  final ApiService _api = ApiService();

  Future<void> init() async {
    _problemBox = await Hive.openBox('dsa_problems');

    // Force seed if we don't have exactly the right amount of problems (827 expected)
    // Or if the first problem doesn't have a robust lesson (meaning it was wiped by Firebase)
    bool needsSeed = _problemBox.length != kunalProblems.length;
    if (!needsSeed && _problemBox.isNotEmpty) {
      final firstItem = Map<String, dynamic>.from(_problemBox.getAt(0));
      // If the lesson list is empty or generic, force a re-seed
      needsSeed =
          firstItem['lesson'] == null || (firstItem['lesson'] as List).isEmpty;
    }

    // Always force seed for now to ensure lessons are applied since they were ruined
    needsSeed = true;

    if (needsSeed) {
      debugPrint(
        "Seeding/updating database. Found ${_problemBox.length} out of ${kunalProblems.length} expected.",
      );
      // We shouldn't clear the box completely otherwise we lose 'solved' statuses.
      await _seedProblems();

      try {
        final sample = Map<String, dynamic>.from(_problemBox.getAt(0));
        debugPrint("Sample lesson loaded: ${sample['lesson']}");
      } catch (e) {
        debugPrint("Seed sample print error: $e");
      }
    }

    // Attempt background sync but don't block
    _syncFromRemote();
  }

  Future<void> _syncFromRemote() async {
    try {
      final remoteProblems = await _api.fetchAllProblems();
      if (remoteProblems.isNotEmpty) {
        // Update local cache carefully
        for (final p in remoteProblems) {
          final id = p['id'] as String;
          if (_problemBox.containsKey(id)) {
            // DO NOT overwrite the entire local problem with remote static fields.
            // This destroys the dynamically generated lessons from kunal_problems.
            // Only sync the user status:
            final localPrb = Map<String, dynamic>.from(_problemBox.get(id));
            if (p['solved'] == true) {
              localPrb['solved'] = true;
              await _problemBox.put(id, localPrb);
            }
          } else {
            await _problemBox.put(id, p);
          }
        }
      }
    } catch (e) {
      debugPrint('Sync failed: \$e. Falling back to offline Hive core.');
    }
  }

  Future<void> _seedProblems() async {
    for (final p in kunalProblems) {
      if (_problemBox.containsKey(p['id'])) {
        final old = Map<String, dynamic>.from(_problemBox.get(p['id']));
        if (old['solved'] == true) p['solved'] = true;
      }
      await _problemBox.put(p['id'], p);
      // We will skip uploading to Firestore immediately on seed because 827 requests will hang the app and freeze it.
      // await _api.uploadProblem(p);
    }
  }

  // Get all problems for a specific zone
  List<Map<String, dynamic>> getProblemsForZone(int zone) {
    try {
      final all = <Map<String, dynamic>>[];
      for (final key in _problemBox.keys) {
        final raw = _problemBox.get(key);
        if (raw == null || raw is! Map) continue;

        // Safely parse map keys to strings to avoid Map<dynamic, dynamic> cast errors
        final p =
            raw.map((k, v) => MapEntry(k.toString(), v))
                as Map<String, dynamic>;
        if (p['zone'] == zone) {
          all.add(p);
        }
      }
      all.sort(
        (a, b) =>
            (a['id']?.toString() ?? '').compareTo(b['id']?.toString() ?? ''),
      );
      return all;
    } catch (e) {
      return [];
    }
  }

  // Get a single problem by id
  Map<String, dynamic>? getProblem(String id) {
    final raw = _problemBox.get(id);
    if (raw == null || raw is! Map) return null;
    return raw.map((k, v) => MapEntry(k.toString(), v)) as Map<String, dynamic>;
  }

  // Check if a problem is solved
  bool isProblemSolved(String id) {
    final raw = _problemBox.get(id);
    if (raw == null) return false;
    final p = Map<String, dynamic>.from(raw);
    return p['solved'] == true;
  }

  // Mark a problem as solved
  void markProblemSolved(String id) {
    final raw = _problemBox.get(id);
    if (raw == null) return;
    final p = Map<String, dynamic>.from(raw);
    p['solved'] = true;
    _problemBox.put(id, p);
  }

  // Get completion stats for a zone
  Map<String, int> getZoneStats(int zone) {
    final problems = getProblemsForZone(zone);
    final solved = problems.where((p) => p['solved'] == true).length;
    return {'total': problems.length, 'solved': solved};
  }

  // Get total XP earned
  int getTotalXp() {
    try {
      int xp = 0;
      for (final key in _problemBox.keys) {
        final raw = _problemBox.get(key);
        if (raw == null || raw is! Map) continue;
        final p = Map<String, dynamic>.from(raw);
        if (p['solved'] == true) {
          xp += (p['xp'] is int ? p['xp'] as int : 0);
        }
      }
      return xp;
    } catch (e) {
      return 0;
    }
  }

  // Clear and reseed (for development)
  Future<void> resetDatabase() async {
    await _problemBox.clear();
    await _seedProblems();
  }
}
