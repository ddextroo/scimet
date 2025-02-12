import 'package:cloud_firestore/cloud_firestore.dart';

class AnalyticsController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> updateWordCount(String userId, String word) async {
    final userDocRef = _firestore.collection('analytics').doc(userId);
    final docRef = userDocRef.collection('words').doc(word);

    // Check if the user document exists
    final userDoc = await userDocRef.get();
    if (!userDoc.exists) {
      // Set the initial field if the document does not exist
      await userDocRef.set({
        'test': 'test',
      });
    }

    // Check if the word document exists
    final doc = await docRef.get();
    if (doc.exists) {
      await docRef.update({
        'count': FieldValue.increment(1),
      });
    } else {
      // Create new document for the word
      await docRef.set({
        'word': word,
        'count': 1,
      });
    }
  }

  Future<void> saveQuizResults({
    required String userId,
    required String moduleName, // Changed from unitTitle
    required String score,
    required String highestScore,
    required List<Map<String, dynamic>> quizItems,
  }) async {
    final timestamp = DateTime.now();
    final quizData = {
      'timestamp': timestamp,
      'score': score,
      'highestScore': highestScore,
      'quizItems': quizItems,
      'moduleName': moduleName, // Changed from unitTitle
    };

    // Update Firestore structure to use modules instead of units
    final moduleRef = _firestore
        .collection('quizAnalytics')
        .doc(userId)
        .collection('modules')
        .doc(moduleName);

    await moduleRef.set({
      'highestScore': highestScore,
      'lastAttempt': timestamp,
      'totalAttempts': FieldValue.increment(1),
    }, SetOptions(merge: true));

    await moduleRef.collection('attempts').add(quizData);

    // Optional: Maintain root document
    final userDocRef = _firestore.collection('quizAnalytics').doc(userId);
    final userDoc = await userDocRef.get();
    if (!userDoc.exists) {
      await userDocRef.set({'createdAt': timestamp});
    }
  }

  Future<Map<String, dynamic>> getQuizAnalytics(String userId, String moduleName) async {
    final doc = await _firestore
        .collection('quizAnalytics')
        .doc(userId)
        .collection('modules')
        .doc(moduleName)
        .get();

    return doc.data() ?? {};
  }
}
