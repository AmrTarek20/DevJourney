import 'package:flutter_quize/model/dart_quiz.dart';

class LocalDatabasesQuiz {
  static final List<Question> dbBasics = [
    Question(
      questionText:
          'When should you choose SQLite over SharedPreferences in a Flutter app?',
      options: [
        'When storing a simple boolean theme flag',
        'When storing complex, structured, and relational data that requires tables, filtering, sorting, and querying large datasets locally',
        'When you want faster internet connection',
        'SharedPreferences is always better for everything',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'What is the primary function of a SQL "SELECT" statement?',
      options: [
        'To delete records from a table',
        'To retrieve data from one or more database tables based on specified conditions',
        'To create a new database schema',
        'To update existing rows',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // --- Interviews ---
  static final List<Question> dbInterview = [
    Question(
      questionText:
          'Why is it critical to use parameterized queries (like whereArgs and "?") in SQLite instead of raw string interpolation?',
      options: [
        'To make queries run slower',
        'To protect the application against SQL Injection security vulnerabilities and safely sanitize special characters',
        'String interpolation causes syntax errors in Dart',
        'Parameterized queries automatically encrypt the entire database file',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is an ORM (Object-Relational Mapping) like Drift (Moor) in Flutter?',
      options: [
        'A UI library for custom responsive layouts',
        'A library that allows developers to interact with SQLite databases using strongly-typed Dart code and classes instead of writing raw SQL strings',
        'A network debugging tool',
        'A state management architecture',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // --- Common & Hard ---
  static final List<Question> dbHard = [
    Question(
      questionText:
          'What is a Database Migration, and why is it necessary when updating app versions?',
      options: [
        'Moving app files from Android to iOS',
        'Handling schema changes (like adding new columns, tables, or indexes) safely when updating the app version without causing crashes or losing existing user data',
        'Clearing cache memory automatically',
        'Backing up files to Google Drive',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is a Database Index, and what is its performance trade-off?',
      options: [
        'An index speeds up SELECT read queries significantly, but slows down INSERT, UPDATE, and DELETE operations and consumes extra disk space',
        'An index deletes unused rows automatically',
        'An index is used exclusively for string matching',
        'There are no performance trade-offs with indexes',
      ],
      correctAnswerIndex: 0,
    ),
  ];
}
