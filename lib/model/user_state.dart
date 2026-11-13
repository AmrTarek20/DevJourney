class UserStats {
  static int totalQuizzesTaken = 0; // عدد الكويزات اللي خلصها
  static int totalCorrectAnswers = 0; // إجمالي الإجابات الصح
  static int totalQuestionsSolved = 0; // إجمالي الأسئلة اللي حلها

  // دالة بنستدعيها أول ما المستخدم يخلص أي كويز عشان نحدث البيانات
  static void addQuizResult({required int correct, required int total}) {
    totalQuizzesTaken++;
    totalCorrectAnswers += correct;
    totalQuestionsSolved += total;
  }

  static double get accuracy {
    if (totalQuestionsSolved == 0) return 0.0;
    return (totalCorrectAnswers / totalQuestionsSolved);
  }
}
