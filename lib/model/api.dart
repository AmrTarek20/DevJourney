import 'package:flutter_quize/model/dart_quiz.dart';

class ApiQuiz {
  static final List<Question> apiBasics = [
    Question(
      questionText: 'What does HTTP status code "200 OK" signify?',
      options: [
        'The resource was successfully deleted',
        'The request has succeeded and the server returned the requested data',
        'The server encountered an internal error',
        'The user is unauthorized',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is JSON Serialization and Deserialization in Flutter?',
      options: [
        'Encrypting data before storing in SQLite',
        'Serialization converts Dart objects to JSON maps for transmission; Deserialization converts incoming JSON maps into strong Dart model objects',
        'Compressing network images',
        'Managing application routes',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // --- Interviews ---
  static final List<Question> apiInterview = [
    Question(
      questionText:
          'How do you handle expired Access Tokens automatically across all API requests in Dio?',
      options: [
        'By writing try-catch blocks in every UI button',
        'Using Dio Interceptors (specifically in onError) to intercept 401 Unauthorized responses, request a new token via Refresh Token, and retry the failed request',
        'By restarting the app automatically',
        'By forcing the user to log in every 10 minutes',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Why is Dio often preferred over the basic http package in enterprise Flutter apps?',
      options: [
        'http package cannot make POST requests',
        'Dio supports advanced features out of the box like Interceptors, Global Configuration, FormData, Request Cancellation, and Download Progress',
        'Dio is built directly into the Flutter core SDK',
        'http package is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // --- Common & Hard ---
  static final List<Question> apiHard = [
    Question(
      questionText:
          'What is the difference between using Isolate.spawn vs compute() when parsing massive JSON responses in Flutter?',
      options: [
        'compute() is a high-level abstraction wrapper around Isolate.spawn that simplifies running a single heavy function in a background isolate without blocking the UI thread',
        'compute() runs on the main UI thread',
        'Isolate.spawn cannot handle JSON data',
        'There is no performance difference',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'How can you handle race conditions or cancel redundant network requests when a user rapidly types in a search bar (Debouncing)?',
      options: [
        'By making an API call on every single keystroke',
        'Using a Timer or RxDart operators (like debounceTime) to delay API execution until the user stops typing for a specific duration, along with CancelToken in Dio',
        'Disabling the internet connection',
        'Restarting the search screen',
      ],
      correctAnswerIndex: 1,
    ),
  ];
}