import 'package:cloud_firestore/cloud_firestore.dart';

class AnalyticsController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> updateWordCount(String userId, String word) async {
    final docRef = _firestore
        .collection('analytics')
        .doc(userId)
        .collection('words')
        .doc(word);

    final doc = await docRef.get();
    print(doc);

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
