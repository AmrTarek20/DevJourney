import 'package:flutter_quize/model/dart_quiz.dart';

class AllOppQuiz {
  static final List<Question> oopBasics = [
    Question(
      questionText:
          'What is the main purpose of Encapsulation in Object-Oriented Programming?',
      options: [
        'To make code run faster on mobile processors',
        'To bundle data and methods that operate on that data within a single unit and restrict direct access',
        'To automatically write unit tests',
        'To replace abstract classes with interfaces',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is the difference between an abstract class and a regular class in Dart?',
      options: [
        'An abstract class cannot be instantiated directly and can contain abstract methods without bodies',
        'An abstract class is only used for UI widgets',
        'A regular class cannot have properties',
        'There is no difference at all',
      ],
      correctAnswerIndex: 0,
    ),
  ];

  // --- Interviews ---
  static final List<Question> oopInterview = [
    Question(
      questionText:
          'What does the "S" in SOLID stand for, and why is it important?',
      options: [
        'Secure Principle - ensures data encryption',
        'Single Responsibility Principle - a class should have one, and only one, reason to change',
        'Synchronous Principle - handles background tasks',
        'Scalable Principle - allows apps to handle more users',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is Dependency Injection (DI) and why do we use it in Flutter?',
      options: [
        'A tool to inject custom animations into UI',
        'A design pattern that decouples classes from their dependencies, making code highly testable and maintainable',
        'A method to speed up Firebase database queries',
        'A tool to compress assets',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // --- Common & Hard ---
  static final List<Question> oopHard = [
    Question(
      questionText:
          'In Dart, what is the exact difference between using "extends" versus "implements"?',
      options: [
        'There is no difference',
        'extends inherits behavior and state (implementation), while implements treats the class as an interface, forcing you to override all methods with no inherited code',
        'implements can only be used with Mixins',
        'extends requires abstract classes only',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is the Liskov Substitution Principle (LSP) in simple terms?',
      options: [
        'Derived classes must be substitutable for their base classes without altering the correct behavior of the program',
        'Classes should be open for extension but closed for modification',
        'Interfaces should be client-specific',
        'Depend upon abstractions, not concretions',
      ],
      correctAnswerIndex: 0,
    ),
  ];
}
