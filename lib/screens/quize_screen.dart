import 'package:flutter/material.dart';
import 'package:flutter_quize/model/dart_quiz.dart';
import 'package:flutter_quize/model/user_state.dart';
import 'package:flutter_quize/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  final String categoryTitle;
  final List<Question> questionsList;
  const QuizScreen({
    super.key,
    required this.categoryTitle,
    required this.questionsList,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentIndex = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.questionsList.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(widget.categoryTitle)),
        body: const Center(
          child: Text('No questions available for this category!'),
        ),
      );
    }
    final currentQuestion = widget.questionsList[currentIndex];
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9F8),
      appBar: AppBar(
        title: Text(widget.categoryTitle),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question ${currentIndex + 1} of ${widget.questionsList.length}',
              style: const TextStyle(
                color: Color.fromARGB(255, 93, 120, 159),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              currentQuestion.questionText,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E293B),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: currentQuestion.options.length,
                itemBuilder: (context, index) {
                  final optionText = currentQuestion.options[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF00B4D8).withOpacity(0.08),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF1E293B),
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 18,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide(
                            color: const Color(0xFF00B4D8).withOpacity(0.3),
                            width: 1.5,
                          ),
                        ),
                      ),
                      onPressed: () {
                        bool isCorrect =
                            (index == currentQuestion.correctAnswerIndex);

                        if (isCorrect) {
                          score++;
                        }

                        if (currentIndex < widget.questionsList.length - 1) {
                          setState(() {
                            currentIndex++;
                          });
                        } else {
                          UserStats.addQuizResult(
                            correct: score,
                            total: widget.questionsList.length,
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                score: score,
                                totalQuestions: widget.questionsList.length,
                              ),
                            ),
                          );
                        }
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          optionText,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1E293B),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
