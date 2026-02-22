import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Collection reference
  CollectionReference get _problemsRef => _firestore.collection('problems');

  /// Fetches all problems from Firestore.
  Future<List<Map<String, dynamic>>> fetchAllProblems() async {
    try {
      final snapshot = await _problemsRef.get();
      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        data['id'] = doc.id; // Ensure ID is present
        return data;
      }).toList();
    } catch (e) {
      debugPrint('Error fetching problems from Firestore: $e');
      return [];
    }
  }

  /// Uploads a single problem to Firestore (useful for seeding tool).
  Future<void> uploadProblem(Map<String, dynamic> problemData) async {
    try {
      final id = problemData['id'];
      await _problemsRef.doc(id).set(problemData, SetOptions(merge: true));
    } catch (e) {
      debugPrint('Error uploading problem $problemData: $e');
    }
  }
}
