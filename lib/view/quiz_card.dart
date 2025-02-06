import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scimet/model/quiz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller/analytics_controller.dart';
import '../controller/units_controller.dart';
import '../model/modules.dart';
import '../model/units.dart';

class QuizCard extends StatefulWidget {
  const QuizCard({Key? key}) : super(key: key);

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0;
  bool isAnswered = false;
  late List<Quiz> quizzes = [];
  String? moduleName;
  String? nextModule;
  int? currentIndex;
  late UnitsController unitsController;
  double highestScore = 0.0; // Track the highest score for the unit
  String? selectedAnswerKey; // Track the selected answer
  bool showCorrectAnswer = false; // Flag to show the correct answer
  List<Map<String, dynamic>> userQuizResponses = [];
  final AnalyticsController analyticsController = AnalyticsController();
  String? userId;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    moduleName = args?['moduleName'];
    nextModule = args?['nextModule'];
    currentIndex = args?['currentIndex'];
    initializeQuizzes();
  }

  void initializeQuizzes() {
    if (moduleName == null) return;
    final units = unitsController.getUnits();
    for (final unit in units) {
      if (unit.modulesList.any((module) => module.moduleName == moduleName)) {
        quizzes = unit.quizzes;
        break;
      }
    }
  }

  Future<void> loadHighestScore() async {
    final prefs = await SharedPreferences.getInstance();
    final unitTitle = getCurrentUnitTitle();
    if (unitTitle != null) {
      setState(() {
        highestScore = prefs.getDouble('${unitTitle}_score') ?? 0.0;
      });
    }
  }

  String? getCurrentUnitTitle() {
    final units = unitsController.getUnits();
    for (final unit in units) {
      if (unit.modulesList.any((module) => module.moduleName == moduleName)) {
        return unit.title;
      }
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    unitsController = UnitsController();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    loadHighestScore();
  }

  void checkAnswer(String selectedKey) {
    if (isAnswered) return;

    final currentQuiz = quizzes[currentQuestionIndex];
    final isCorrect = selectedKey == currentQuiz.correctAnswer;

    // Add to user responses
    userQuizResponses.add({
      'question': currentQuiz.question,
      'userAnswer': selectedKey,
      'correctAnswer': currentQuiz.correctAnswer,
      'isCorrect': isCorrect,
      'questionImage': currentQuiz.questionImage,
      'choices': currentQuiz.choices,
    });

    setState(() {
      isAnswered = true;
      selectedAnswerKey = selectedKey;
      showCorrectAnswer = true;
    });

    if (isCorrect) {
      correctAnswers++;
      showCorrectDialog();
    } else {
      showIncorrectDialog(currentQuiz);
    }
  }

  void showCorrectDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Correct!'),
        content: Text('Well done!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              nextQuestion();
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }

  void showIncorrectDialog(Quiz currentQuiz) {
    final correctAnswer = currentQuiz.choices[currentQuiz.correctAnswer];
    String answerText =
        correctAnswer is String ? correctAnswer : correctAnswer['text'] ?? '';

    final List<String> motivationalMessages = [
      "Keep going! Every mistake is a step closer to success.",
      "Don't give up! Learning is a journey, and you're on the right path.",
      "Mistakes are proof that you're trying. Stay determined!",
      "You’ve got this! Try again and see how much you've learned.",
      "Every expert was once a beginner. Keep pushing forward!"
    ];

    final random = Random();
    final String randomMessage =
        motivationalMessages[random.nextInt(motivationalMessages.length)];

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Incorrect Answer'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(randomMessage),
            SizedBox(height: 10),
            Text('The correct answer is: $answerText'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              nextQuestion();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  void nextQuestion() {
    if (currentQuestionIndex < quizzes.length - 1) {
      setState(() {
        currentQuestionIndex++;
        isAnswered = false;
        selectedAnswerKey = null;
        showCorrectAnswer = false;
      });
    } else {
      saveScore(); // Save the score before showing the completion dialog
      showCompletionDialog();
    }
  }

  Future<void> saveScore() async {
    final prefs = await SharedPreferences.getInstance();
    final unitTitle = getCurrentUnitTitle();
    userId = prefs.getString("user_id")!;
    if (unitTitle != null) {
      final scorePercentage = (correctAnswers / quizzes.length) * 100;
      if (userId != null) {
        // Ensure user is logged in
        await analyticsController.saveQuizResults(
          userId: userId!,
          unitTitle: unitTitle,
          score: scorePercentage,
          highestScore: highestScore,
          quizItems: userQuizResponses,
        );
      }

      if (scorePercentage > highestScore) {
        await prefs.setDouble('${unitTitle}_score', scorePercentage);
        setState(() {
          highestScore = scorePercentage;
        });
      }
    }
  }

  void showCompletionDialog() async {
    final prefs = await SharedPreferences.getInstance();
    final unitTitle = getCurrentUnitTitle();
    userId = prefs.getString("user_id")!;
    final scorePercentage = (correctAnswers / quizzes.length) * 100;
    if (unitTitle != null) {
      if (userId != null) {
        await analyticsController.saveQuizResults(
          userId: userId!,
          unitTitle: unitTitle,
          score: scorePercentage,
          highestScore: highestScore,
          quizItems: userQuizResponses,
        );
      }
    }
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Quiz Completed'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('You have completed all questions!'),
            SizedBox(height: 10),
            Text('Total Questions: ${quizzes.length}'),
            Text('Correct Answers: $correctAnswers'),
            Text('Your Score: ${scorePercentage.toStringAsFixed(1)}%'),
            if (scorePercentage > highestScore)
              Text(
                'New High Score!',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              unlockNextModuleOrUnit();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  Future<void> unlockNextModuleOrUnit() async {
    final prefs = await SharedPreferences.getInstance();
    final passingScore = (quizzes.length * 0.7).ceil();
    if (correctAnswers >= passingScore) {
      final nextUnitAndModule =
          unitsController.getNextUnitAndFirstModule(currentIndex!);
      if (nextUnitAndModule != null) {
        final nextUnit = nextUnitAndModule['unit'] as Units;
        final firstModule = nextUnitAndModule['firstModule'] as Modules;
        final nextUnitKey = 'showNextUnitDialog_${nextUnit.title}';
        if (!(prefs.getBool(nextUnitKey) ?? false)) {
          await unitsController.setModuleCompleted(firstModule.moduleName);
          _showUnlockDialog("Next unit unlocked",
              "You can now access the unit: ${nextUnit.title} - ${firstModule.moduleName}.");
          await prefs.setBool(nextUnitKey, true);
        }
      }
    } else {
      _showFailedDialog("Unlock Failed",
          "You cannot access the next unit. You need to pass with at least 70%. Please try again.");
      setState(() {
        currentQuestionIndex = 0;
        correctAnswers = 0;
        isAnswered = false;
        selectedAnswerKey = null;
        showCorrectAnswer = false;
      });
    }
  }

  void _showUnlockDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () =>
                Navigator.pushNamed(context, '/home', arguments: {}),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showFailedDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (quizzes.isEmpty)
      return Scaffold(body: Center(child: CircularProgressIndicator()));

    final currentQuiz = quizzes[currentQuestionIndex];
    final choices = currentQuiz.choices.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              moduleName ?? 'Quiz',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Question ${currentQuestionIndex + 1} of ${quizzes.length}',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${((correctAnswers / (currentQuestionIndex + 1)) * 100).toInt()}%',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'High Score: ${highestScore.toStringAsFixed(1)}%',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (currentQuiz.questionImage != null)
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(currentQuiz.questionImage!),
                  ),
                ),
              SizedBox(height: 24),
              Text(
                currentQuiz.question,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              ...choices.map((entry) => buildChoiceButton(entry, currentQuiz)),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChoiceButton(MapEntry<String, dynamic> entry, Quiz currentQuiz) {
    final choiceKey = entry.key;
    final choiceValue = entry.value;
    final isImageChoice = choiceValue is Map;

    Color backgroundColor = Color(0xFFE8F5E9); // Default light green
    Color foregroundColor = Color(0xFF2E7D32); // Default dark green

    if (showCorrectAnswer) {
      if (choiceKey == currentQuiz.correctAnswer) {
        backgroundColor = Colors.green[100]!; // Highlight correct answer
        foregroundColor = Colors.green[900]!;
      } else if (choiceKey == selectedAnswerKey) {
        backgroundColor = Colors.red[100]!; // Highlight incorrect answer
        foregroundColor = Colors.red[900]!;
      }
    }

    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        onPressed: () => checkAnswer(choiceKey),
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          // Dark green for text
          backgroundColor: backgroundColor,
          // Light green background
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        ),
        child: Row(
          children: [
            Text(
              '$choiceKey.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: isImageChoice
                  ? buildImageChoice(choiceValue)
                  : buildTextChoice(choiceValue),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageChoice(Map choiceValue) {
    return Column(
      children: [
        if (choiceValue['text'] != null && choiceValue['text'].isNotEmpty)
          Text(
            choiceValue['text'],
            style: TextStyle(fontSize: 16),
          ),
        Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            choiceValue['image'],
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
          ),
        ),
      ],
    );
  }

  Widget buildTextChoice(dynamic choiceValue) {
    return Text(
      choiceValue.toString(),
      style: TextStyle(fontSize: 16),
    );
  }
}
