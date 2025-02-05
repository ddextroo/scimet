class Quiz {
  final String question;
  final Map<String, dynamic> choices;
  final String? questionImage;
  final String correctAnswer;

  Quiz({
    required this.question,
    required this.choices,
    this.questionImage,
    required this.correctAnswer,
  });
}