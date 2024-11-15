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
}
