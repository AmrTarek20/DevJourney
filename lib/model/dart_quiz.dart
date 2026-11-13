class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
}

class AllQuestionsData {
  // 1. Dart Basics & Variables
  static final List<Question> dartBasics = [
    Question(
      questionText:
          'What keyword is used to define a compile-time constant variable whose value cannot change after being assigned?',
      options: ['var', 'final', 'const', 'dynamic'],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText:
          'Which of the following data types is used to store integers in Dart?',
      options: ['double', 'int', 'String', 'bool'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is the default value of any variable declared in Dart that is left uninitialized?',
      options: ['0', 'false', 'null', 'undefined'],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText:
          'Which of the following methods is used to convert a String to an integer (int) in Dart?',
      options: [
        'int.parse()',
        'String.toInt()',
        'num.convert()',
        'parse.int()',
      ],
      correctAnswerIndex: 0,
    ),
  ];

  // 2. Control Flow & Operators
  static final List<Question> dartControlFlow = [
    Question(
      questionText: 'What is the operator used in Dart for null-coalescing?',
      options: ['??', '?.', '!', '??='],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'Which of the following loops is used to execute code a known, fixed number of times?',
      options: ['while', 'do-while', 'for', 'switch'],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'What operator is used for a type test in Dart?',
      options: ['is', 'as', 'type', 'check'],
      correctAnswerIndex: 0,
    ),
  ];

  // 3. Functions & Collections
  static final List<Question> dartFunctionsAndCollections = [
    Question(
      questionText:
          'What is the correct way to define an arrow function that returns a value in Dart?',
      options: [
        'int sum(a, b) { => a + b; }',
        'int sum(a, b) => a + b;',
        'function sum(a, b) => a + b;',
        'def sum(a, b) => a + b;',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'How do you add a new element to a List in Dart?',
      options: [
        'list.add(item)',
        'list.append(item)',
        'list.push(item)',
        'list.insertLast(item)',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'Which collection stores data as key-value pairs in Dart?',
      options: ['List', 'Set', 'Map', 'Queue'],
      correctAnswerIndex: 2,
    ),
  ];

  // 4. OOP in Dart
  static final List<Question> dartOop = [
    Question(
      questionText:
          'What mechanism is used for encapsulation and data hiding within a class using symbols?',
      options: [
        'Using the dollar sign \$',
        'Starting the name with an underscore (_)',
        'Using the keyword private',
        'No protection exists',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Which keyword is used to inherit a class from another class in Dart?',
      options: ['implements', 'extends', 'inherits', 'uses'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'What is a Named Constructor in Dart?',
      options: [
        'A constructor without a name',
        'A constructor that takes the exact same name as the class',
        'A constructor created in the format ClassName.name() for easier initialization',
        'A constructor specific to Mixins only',
      ],
      correctAnswerIndex: 2,
    ),
  ];

  // 5. Async & Advanced
  static final List<Question> dartAsyncAndAdvanced = [
    Question(
      questionText:
          'What are the two keywords responsible for handling asynchronous operations in Dart?',
      options: [
        'async / await',
        'try / catch',
        'future / stream',
        'wait / thread',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'Which object represents a value that will be available in the future (returning a single result later)?',
      options: ['Stream', 'Future', 'Callback', 'Promise'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Which object is used to listen to a stream of multiple events over time in Dart?',
      options: ['Future', 'Stream', 'Buffer', 'Timer'],
      correctAnswerIndex: 1,
    ),
  ];

  // 6. Advanced Dart & Memory Management
  static final List<Question> dartInterviewAdvanced = [
    Question(
      questionText:
          'What is the fundamental difference between const and final in Dart?',
      options: [
        'There is no difference',
        'final is determined at runtime, whereas const is determined at compile-time',
        'const changes later, whereas final is strictly constant',
        'final is used only for numbers, const for strings',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'What does Sound Null Safety mean in Dart?',
      options: [
        'Protecting the app from crashes due to null values by checking variables before compilation',
        'Eliminating null values from the language entirely',
        'Speeding up database data reading',
        'Encrypting code to prevent theft',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'What are Isolates in Dart and how do they differ from regular threads?',
      options: [
        'Separate execution paths that do not share memory and communicate via message passing only',
        'Just another name for Future',
        'An official animation library in Flutter',
        'Execution paths that share the same memory space with the main thread',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'What is the `late` keyword and its effect when defining a variable in Dart?',
      options: [
        'Prevents changing the variable value forever',
        'Tells the compiler that the variable is always nullable',
        'Allows delaying the initialization of a non-nullable variable until its first use',
        'Deletes the variable from memory after 5 seconds',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'What is a Mixin in Dart and how is it used?',
      options: [
        'A way of reusing code across multiple class hierarchies without inheritance (using "with")',
        'A special type of Enum',
        'A function executed only once when the app opens',
        'A class containing no variables',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'What is the difference between a Single-subscription Stream and a Broadcast Stream?',
      options: [
        'The first allows only one listener, while the second allows multiple listeners',
        'The first works with strings only and the second with numbers',
        'There is no difference in Dart',
        'The first runs in the background and the second in the foreground',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'What is the Event Loop in Dart and what does it fundamentally consist of?',
      options: [
        'An engine managing event execution via Microtask Queue and Event Queue',
        'An infinite for loop running in the background',
        'A function responsible for rendering screens in Flutter only',
        'A system for saving data on mobile',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'What is the benefit of using a factory constructor in Dart classes?',
      options: [
        'Creating a pre-cached instance or returning an instance of a subtype rather than always creating a new instance',
        'Speeding up UI building only',
        'Deleting old objects automatically',
        'Preventing subclassing of the class',
      ],
      correctAnswerIndex: 0,
    ),
  ];

  // 7. Dart Code Snippets
  static final List<Question> dartCodeQuestions = [
    Question(
      questionText:
          'What is the expected output when executing this code?\n\n```dart\nvoid main() {\n  var list = [1, 2, 3];\n  var list2 = [0, ...list];\n  print(list2.length);\n}\n```',
      options: ['3', '4', '2', '5'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is the error or output in the following code?\n\n```dart\nvoid main() {\n  const x = 10;\n  x = 20;\n  print(x);\n}\n```',
      options: [
        'Prints 20',
        'Prints 10',
        'Compile-time error because const value cannot be changed',
        'Runtime error',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText:
          'What is the output when executing this null safety code snippet?\n\n```dart\nvoid main() {\n  String? name;\n  print(name ?? "Guest");\n}\n```',
      options: ['null', 'Guest', 'Exception', 'false'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is the output length of printing this Set in Dart?\n\n```dart\nvoid main() {\n  var mySet = {1, 2, 2, 3, 3, 3};\n  print(mySet.length);\n}\n```',
      options: ['6', '3', '2', '4'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'How will the statements be executed in the following code (Event Loop order)?\n\n```dart\nvoid main() {\n  print("A");\n  Future.microtask(() => print("B"));\n  print("C");\n}\n```',
      options: ['A, B, C', 'A, C, B', 'B, A, C', 'C, A, B'],
      correctAnswerIndex: 1,
    ),
  ];
}
