import 'package:flutter/material.dart';
import 'package:flutter_quize/model/user_state.dart';
import 'package:flutter_quize/widget/stat_card.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});


  @override
  Widget build(BuildContext context) {
double userAccuracy = UserStats.accuracy;
  int accuracyPercent = (userAccuracy * 100).toInt();
    return Stack(
      children: [
        Positioned(
          top: -300,
          right: -310,
          child: Container(
            width: 800,
            height: 800,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color(0xFF00F2FE).withOpacity(0.45),
                  const Color(0xFF00B4D8).withOpacity(0.15),
                  Colors.transparent,
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
          ),
        ),

        SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'YOUR PROGRESS',
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF1E293B),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF00B4D8), Color(0xFF0077B6)],
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Flutter & Dart Expert',
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '$accuracyPercent% Accuracy',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value:  userAccuracy,
                          minHeight: 8,
                          backgroundColor: Colors.white.withOpacity(0.2),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                const Text(
                  'Statistics Overview',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E293B),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: StatCard(
                        title: 'Quizzes Taken',
                        value: '${UserStats.totalQuizzesTaken}',
                        icon: Icons.quiz_outlined,
                        color: const Color(0xFF00B4D8),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: StatCard(
                        title: 'Correct Answers',
                        value: '${UserStats.totalCorrectAnswers}',
                        icon: Icons.check_circle_outline_rounded,
                        color: const Color(0xFF10B981),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: StatCard(
                        title: 'Questions Solved',
                        value: '${UserStats.totalQuestionsSolved}',
                        icon: Icons.help_outline_rounded,
                        color: const Color(0xFFA855F7),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: StatCard(
                        title: 'Streak Days',
                        value: 'Soon',
                        icon: Icons.local_fire_department_outlined,
                        color: Color(0xFFF59E0B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ) ;
  }
}
