import 'package:flutter_quize/model/dart_quiz.dart';

class AllFlutterQuestions {
  // 1. Flutter Widgets & Basics
  static final List<Question> flutterBasics = [
    Question(
      questionText:
          'What is the main and most important difference between StatelessWidget and StatefulWidget in Flutter?',
      options: [
        'Stateless is just faster in execution with no other differences',
        'Stateful maintains state and can redraw itself (setState) when data changes, whereas Stateless is static and immutable',
        'Stateful is used exclusively for the main home page',
        'It is impossible to build any app without using StatefulWidget entirely',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is the primary function of the setState() method in a StatefulWidget?',
      options: [
        'To save data locally on the mobile device',
        'To notify the framework that the state has changed, forcing a widget rebuild and UI update',
        'To gracefully close the application',
        'To communicate with an external API',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'What is the role of BuildContext in Flutter?',
      options: [
        'It is a handle representing the widget\'s location within the widget tree',
        'It is a variable used solely to store text strings',
        'It is responsible for connecting the app to the database',
        'It is a function used to draw geometric shapes',
      ],
      correctAnswerIndex: 0,
    ),
  ];

  // 2. Performance & Layouts
  static final List<Question> flutterPerformanceAndLayouts = [
    Question(
      questionText:
          'When should you use ListView.builder instead of a regular ListView in Flutter?',
      options: [
        'When the number of items is small and static (e.g., 3 or 4 items)',
        'When the number of items is large or infinite (lazy loading), because it only renders items currently visible on screen',
        'When you only want to display images',
        'To improve the background color consistency',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What issue occurs if you place a ListView directly inside a Column without bounded height (like Expanded or Flexible)?',
      options: [
        'No issues occur at all',
        'The app will throw a RenderFlex overflow error (yellow and black striped error bars)',
        'The items will be deleted automatically',
        'The colors will match seamlessly',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is the benefit of using const constructors with Widgets in Flutter?',
      options: [
        'Saving memory, preventing unnecessary widget rebuilds during setState, and improving overall performance',
        'Reducing the final APK file size only',
        'Changing the theme color automatically',
        'There is no real benefit',
      ],
      correctAnswerIndex: 0,
    ),
  ];

  // 3. State Management & Navigation
  static final List<Question> flutterStateAndNavigation = [
    Question(
      questionText:
          'What is the difference between Navigator.push and Navigator.pushReplacement in Flutter?',
      options: [
        'There is no difference between them',
        'push adds the new screen on top while keeping the back stack, whereas pushReplacement replaces the current screen and removes it from the stack',
        'push is used only for navigating backwards',
        'pushReplacement restarts the app from scratch',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Why do we use state management libraries (like Provider, Riverpod, or BLoC) instead of regular setState?',
      options: [
        'To separate business logic from the user interface (UI) and easily manage large-scale apps',
        'Because setState is completely banned in modern Flutter',
        'To run the application without an internet connection',
        'To increase internet download speed',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'What is the role of InheritedWidget in Flutter?',
      options: [
        'It is the underlying foundation for most state management libraries, efficiently propagating data down the widget tree',
        'It is a widget designed to display long blocks of text',
        'It handles direct server communication',
        'It is a design element for custom buttons',
      ],
      correctAnswerIndex: 0,
    ),
  ];

  // 4. Widget Lifecycle & Advanced Interview Questions
  static final List<Question> flutterInterviewAdvanced = [
    Question(
      questionText:
          'What is the correct order of execution for StatefulWidget lifecycle methods when it first appears?',
      options: [
        'build() -> createState() -> initState()',
        'createState() -> initState() -> build()',
        'initState() -> build() -> createState()',
        'build() -> initState() -> dispose()',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'When is the dispose() method called within a StatefulWidget\'s State class?',
      options: [
        'When the application is first launched',
        'When the widget is permanently removed from the widget tree to clean up controllers and free memory',
        'When pressing the device\'s home button',
        'When a network error occurs',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What are Keys in Flutter (such as ValueKey or GlobalKey) and when are they required?',
      options: [
        'To log into the user account',
        'To preserve and track widget state and correct ordering when reordering items in lists to avoid bugs',
        'To change the app language dynamically',
        'To save scores in SharedPreferences',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is the fundamental difference between GlobalKey and LocalKey (like ValueKey or ObjectKey) in Flutter?',
      options: [
        'There is no difference between them',
        'GlobalKey is unique across the entire app allowing access to another widget\'s state or context, whereas LocalKey is used locally within lists for reordering',
        'GlobalKey is significantly faster in performance than LocalKey',
        'LocalKey is used exclusively with images',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'How does rendering work in Flutter using The Three Trees?',
      options: [
        'It consists of Widget Tree (configuration), Element Tree (managing lifecycle and location), and RenderObject Tree (actual layout and painting)',
        'It consists of a single unified tree handling everything',
        'It consists of only two trees: UI Tree and Database Tree',
        'It relies entirely on a web browser engine',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'What is Impeller and what is its primary goal in modern Flutter?',
      options: [
        'A dedicated rendering engine designed to maximize animation smoothness (60/120fps) and eliminate Jank issues associated with Skia',
        'A library for cloud database integration',
        'A tool to compress app assets and reduce APK size',
        'A new way to write backend server code',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'What is the difference between FutureBuilder and StreamBuilder in Flutter?',
      options: [
        'FutureBuilder handles a single asynchronous value arriving in the future, whereas StreamBuilder listens to a continuous stream of multiple events over time',
        'StreamBuilder is optimized to fetch data only once',
        'There is no difference, they serve the exact same purpose',
        'FutureBuilder is used exclusively for internet connectivity',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'What does the term "Jank" mean in Flutter app performance?',
      options: [
        'Dropped frames and UI stuttering during scrolling or animations because the UI thread took longer than 16 milliseconds to render',
        'A server connection timeout error',
        'Total exhaustion of cache memory',
        'Automatic deletion of the app from the device',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'When should you use CustomPainter in Flutter?',
      options: [
        'When you need to draw complex custom geometric shapes or specialized charts not covered by standard widgets',
        'To change the screen background color only',
        'To display long paragraphs of text',
        'To create basic circular buttons',
      ],
      correctAnswerIndex: 0,
    ),
  ];

  // 5. Flutter Code Snippets & UI Logic
  static final List<Question> flutterCodeQuestions = [
    Question(
      questionText:
          'What is the error or issue in this simple Flutter code snippet?\n\n```dart\nColumn(\n  children: [\n    Text("Hello"),\n    ListView(\n      children: [Text("1"), Text("2")],\n    ),\n  ],\n);\n```',
      options: [
        'The code is completely sound and runs without errors',
        'Error because ListView lacks a bounded height inside a Column, causing a RenderFlex Overflow',
        'Syntax error in the keyword Text',
        'It is illegal to place a Text widget inside a Column',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'How do you expand a widget to fill all available empty space inside a Row or Column?',
      options: [
        'Using Expanded or Flexible widgets',
        'Using a large Padding value',
        'Using a SizedBox with a fixed size',
        'Using a Center widget',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'What is the visual output of executing this custom button code?\n\n```dart\nContainer(\n  padding: EdgeInsets.all(16),\n  decoration: BoxDecoration(\n    color: Colors.blue,\n    borderRadius: BorderRadius.circular(12),\n  ),\n  child: Text("Click Me"),\n);\n```',
      options: [
        'A blue rounded box with 16 padding enclosing the text "Click Me"',
        'A compilation runtime error',
        'Nothing will appear on the screen',
        'The application will shut down',
      ],
      correctAnswerIndex: 0,
    ),
  ];
}
