import 'package:flutter_quize/model/dart_quiz.dart';

class FirebaseQuiz {
  static final List<Question> firebaseBasics = [
    Question(
      questionText: 'How is data structured in Cloud Firestore (NoSQL)?',
      options: [
        'In traditional rows and columns like SQL tables',
        'In Collections containing Documents, which store fields as key-value pairs',
        'In isolated plain text files',
        'In XML format trees',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'How does Firebase Authentication handle session persistence after restarting the app?',
      options: [
        'Users must log in manually every single time',
        'The Firebase SDK securely caches user credentials locally on the device, restoring the session automatically on app relaunch',
        'Credentials are saved in public shared preferences in plain text',
        'Sessions expire immediately upon closing app',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // --- Interviews ---
  static final List<Question> firebaseInterview = [
    Question(
      questionText:
          'What is the main difference between Cloud Firestore .get() and .snapshots() methods?',
      options: [
        '.get() listens in real-time, while .snapshots() fetches once',
        '.get() fetches data once (returning a Future), whereas .snapshots() listens for real-time updates (returning a Stream)',
        'They perform the exact same operation',
        '.snapshots() only functions when offline',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What are Security Rules in Firebase, and why are they crucial?',
      options: [
        'Rules used to encrypt images in Firebase Storage',
        'Server-side rules deployed to control read and write access to your database and storage based on user authentication and authorization',
        'Rules to speed up app compilation',
        'Tools to handle push notifications',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // --- Common & Hard ---
  static final List<Question> firebaseHard = [
    Question(
      questionText:
          'What are the major limitations of Cloud Firestore queries compared to traditional SQL databases?',
      options: [
        'Firestore cannot store numbers or booleans',
        'Firestore does not natively support complex multi-field inequality queries on different fields or full-text search without third-party extensions like Algolia',
        'Firestore is a relational database',
        'Firestore queries are strictly synchronous',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'How do you handle offline data persistence and synchronization conflicts in Cloud Firestore?',
      options: [
        'Offline mode is impossible in Firestore',
        'Firestore enables offline persistence by default via local cache; when reconnected, it syncs local writes with server data using last-write-wins or transaction logic',
        'By crashing the app when offline',
        'By deleting local database files',
      ],
      correctAnswerIndex: 1,
    ),
  ];
}