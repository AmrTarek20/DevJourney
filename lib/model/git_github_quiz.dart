import 'package:flutter_quize/model/dart_quiz.dart';

class GitGithubQuiz 
{

  static final List<Question> gitBasics = [
    Question(
      questionText: 'What is the primary role of Git in software development?',
      options: [
        'To design user interface screens',
        'A distributed version control system used to track changes in source code and coordinate work among multiple developers',
        'To compile Dart code into native binaries',
        'To manage backend server hosting',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'What does the Clean Architecture "Dependency Rule" state?',
      options: [
        'Source code dependencies must point inwards; outer layers (UI, Database, Network) can depend on inner layers (Domain), but inner layers must know nothing about outer layers',
        'Inner layers must depend directly on UI widgets',
        'All layers can depend on each other freely',
        'Framework dependencies are mandatory in the core layer',
      ],
      correctAnswerIndex: 0,
    ),
  ];

  // --- Interviews ---
  static final List<Question> gitInterview = [
    Question(
      questionText: 'What is the correct professional Git workflow when developing a new feature in a team?',
      options: [
        'Always commit and push directly to the main production branch',
        'Create a separate feature branch from main, make commits, push to remote, and open a Pull Request (PR) for code review before merging',
        'Delete the repository and recreate it',
        'Use git reset --hard continuously',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'What is the difference between Unit Testing, Widget Testing, and Integration Testing in Flutter?',
      options: [
        'They are all identical terms for the same test type',
        'Unit tests test single functions/classes; Widget tests test individual UI components in isolation; Integration tests test the complete app end-to-end on a real device/emulator',
        'Unit tests only test UI layout screens',
        'Integration tests run faster than unit tests',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // --- Common & Hard ---
  static final List<Question> gitHard = [
    Question(
      questionText: 'What is the exact difference between "git merge" and "git rebase"?',
      options: [
        'Merge creates a merge commit preserving branch history structure; Rebase rewrites commit history linearly by moving your branch commits on top of another base branch',
        'Merge deletes branches, Rebase creates remote tags',
        'There is no difference in history representation',
        'Rebase is only used for HTML documentation',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'How do you perform Dependency Injection cleanly in Flutter using packages like GetIt and Injectable?',
      options: [
        'By passing instances manually through 10 widget constructors',
        'Registering services and blocs as singletons or factories in a service locator container using GetIt, and automating boilerplate generation using Injectable annotations',
        'Using global static variables everywhere',
        'Using Navigator.push arguments',
      ],
      correctAnswerIndex: 1,
    ),
  ];
}
