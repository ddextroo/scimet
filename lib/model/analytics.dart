class Analytics {
  final String word;
  final int count;

  Analytics({required this.word, required this.count});

  Map<String, dynamic> toMap() {
    return {
      'word': word,
      'count': count,
    };
  }

  factory Analytics.fromMap(Map<String, dynamic> map) {
    return Analytics(
      word: map['word'] ?? '',
      count: map['count'] ?? 0,
    );
  }
}
