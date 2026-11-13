import 'package:flutter_quize/model/dart_quiz.dart';

class StatemangementQuize {
  // --- Basics ---
  static final List<Question> stateBasics = [
    Question(
      questionText:
          'What is the core difference between StatelessWidget and StatefulWidget?',
      options: [
        'Stateless widgets cannot accept parameters',
        'Stateful widgets maintain a mutable state and can trigger UI rebuilds via setState, whereas Stateless widgets are immutable',
        'Stateless widgets are deprecated in modern Flutter',
        'Stateful widgets are only used for navigation',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What is the role of the setState() method in a StatefulWidget?',
      options: [
        'To save data locally to device storage',
        'To notify the framework that internal state has changed, forcing a widget rebuild and UI refresh',
        'To terminate the application safely',
        'To make network HTTP requests',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // --- Interviews ---
  static final List<Question> stateInterview = [
    Question(
      questionText:
          'When should you choose BLoC/Cubit over simple Provider or setState?',
      options: [
        'When you want to write less code',
        'When managing complex business logic, predictable state transitions, and strict separation of UI and logic are required in large apps',
        'Only when building a shopping cart app',
        'Provider is always better and BLoC should never be used',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'What happens if you call context.read<MyBloc>() inside a widget build method?',
      options: [
        'The widget will automatically rebuild on every state change',
        'It retrieves the instance without listening to updates, meaning UI will NOT rebuild when state changes (which can cause bugs if used for listening)',
        'It throws an immediate compilation error',
        'It restarts the entire app workflow',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // --- Common & Hard ---
  static final List<Question> stateHard = [
    Question(
      questionText:
          'What is the precise role of BlocListener in the flutter_bloc package?',
      options: [
        'To rebuild parts of the widget tree efficiently',
        'To execute one-off side effects (like showing Snackbars, Navigation, or Dialogs) in response to state changes without rebuilding UI',
        'To cache API responses locally',
        'To initialize database instances',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'How does Cubit differ structurally from a full BLoC?',
      options: [
        'Cubit uses asynchronous streams internally while BLoC does not',
        'Cubit simplifies state management by exposing functions directly to emit states, eliminating the need for explicit Event classes',
        'Cubit is only used for local widget state',
        'There is no structural difference',
      ],
      correctAnswerIndex: 1,
    ),
  ];
}