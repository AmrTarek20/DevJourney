// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_quize/model/api.dart';
import 'package:flutter_quize/model/dart_quiz.dart';
import 'package:flutter_quize/model/firebase._quiz.dart';
import 'package:flutter_quize/model/flutter_quize.dart';
import 'package:flutter_quize/model/git_github_quiz.dart';
import 'package:flutter_quize/model/local_databases_sql_quiz.dart';
import 'package:flutter_quize/model/oop_quiz.dart';
import 'package:flutter_quize/model/statemangement_quize.dart';
import 'package:flutter_quize/screens/quize_screen.dart';

class CategorySelectionScreen extends StatefulWidget {
  final String trackTitle;
  final bool isDart;

  const CategorySelectionScreen({
    super.key,
    required this.trackTitle,
    this.isDart = false,
  });

  @override
  State<CategorySelectionScreen> createState() =>
      _CategorySelectionScreenState();
}

class _CategorySelectionScreenState extends State<CategorySelectionScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> getCategories() {
      if (widget.isDart || widget.trackTitle.contains('Dart')) {
        return [
          {
            'title': 'Dart Basics',
            'desc': 'Variables, Types, Null Safety & Parsing',
            'icon': Icons.lightbulb_outline,
            'questions': AllQuestionsData.dartBasics,
          },
          {
            'title': 'Advanced & Interview',
            'desc': 'const vs final, Isolates & Event Loop',
            'icon': Icons.psychology_outlined,
            'questions': AllQuestionsData.dartInterviewAdvanced,
          },
          {
            'title': 'Code Snippets',
            'desc': 'Predict the output & spot syntax errors',
            'icon': Icons.terminal_rounded,
            'questions': AllQuestionsData.dartCodeQuestions,
          },
        ];
      }
      // 2. لو التراك Architecture & SOLID
      else if (widget.trackTitle.contains('Architecture') ||
          widget.trackTitle.contains('OOP')) {
        return [
          {
            'title': 'OOP Basics',
            'desc': 'Encapsulation, Abstraction & Classes',
            'icon': Icons.code_rounded,
            'questions': AllOppQuiz.oopBasics,
          },
          {
            'title': 'Interview Questions',
            'desc': 'SOLID Principles & Dependency Injection',
            'icon': Icons.psychology_outlined,
            'questions': AllOppQuiz.oopInterview,
          },
          {
            'title': 'Common & Hard',
            'desc': 'Extends vs Implements & LSP',
            'icon': Icons.local_fire_department_rounded,
            'questions': AllOppQuiz.oopHard,
          },
        ];
      }
      // 3. لو التراك State Management
      else if (widget.trackTitle.contains('State Management')) {
        return [
          {
            'title': 'Basics',
            'desc': 'Stateless vs Stateful & setState',
            'icon': Icons.widgets_outlined,
            'questions': StatemangementQuize.stateBasics,
          },
          {
            'title': 'Interviews',
            'desc': 'Provider vs BLoC & context.read',
            'icon': Icons.sync_alt_rounded,
            'questions': StatemangementQuize.stateInterview,
          },
          {
            'title': 'Common & Hard',
            'desc': 'BlocListener & Cubit structure',
            'icon': Icons.bolt_rounded,
            'questions': StatemangementQuize.stateHard,
          },
        ];
      }
      // 4. لو التراك REST APIs
      else if (widget.trackTitle.contains('API') ||
          widget.trackTitle.contains('Networking')) {
        return [
          {
            'title': 'Basics',
            'desc': 'HTTP Status Codes & JSON Serialization',
            'icon': Icons.cloud_sync_rounded,
            'questions': ApiQuiz.apiBasics,
          },
          {
            'title': 'Interviews',
            'desc': 'Dio Interceptors & Refresh Tokens',
            'icon': Icons.security_rounded,
            'questions': ApiQuiz.apiInterview,
          },
          {
            'title': 'Common & Hard',
            'desc': 'Isolates, Compute & Debouncing',
            'icon': Icons.memory_rounded,
            'questions': ApiQuiz.apiHard,
          },
        ];
      }
      // 5. لو التراك Databases & SQL
      else if (widget.trackTitle.contains('Databases') ||
          widget.trackTitle.contains('SQL')) {
        return [
          {
            'title': 'Basics',
            'desc': 'SQLite vs SharedPreferences & SELECT queries',
            'icon': Icons.storage_rounded,
            'questions': LocalDatabasesQuiz.dbBasics,
          },
          {
            'title': 'Interviews',
            'desc': 'SQL Injection prevention & ORMs (Drift)',
            'icon': Icons.shield_rounded,
            'questions': LocalDatabasesQuiz.dbInterview,
          },
          {
            'title': 'Common & Hard',
            'desc': 'Database Migrations & Indexes',
            'icon': Icons.settings_suggest_rounded,
            'questions': LocalDatabasesQuiz.dbHard,
          },
        ];
      }
      // 6. لو التراك Firebase Mastery
      else if (widget.trackTitle.contains('Firebase')) {
        return [
          {
            'title': 'Basics',
            'desc': 'Collections, Documents & Auth Persistence',
            'icon': Icons.local_fire_department_rounded,
            'questions': FirebaseQuiz.firebaseBasics,
          },
          {
            'title': 'Interviews',
            'desc': 'get() vs snapshots() & Security Rules',
            'icon': Icons.admin_panel_settings_rounded,
            'questions': FirebaseQuiz.firebaseInterview,
          },
          {
            'title': 'Common & Hard',
            'desc': 'Firestore limitations & Offline Sync',
            'icon': Icons.cloud_off_rounded,
            'questions': FirebaseQuiz.firebaseHard,
          },
        ];
      }
      // 7. لو التراك Git, Testing & CI/CD أو الافتراضي (Flutter & Responsive UI)
      else if (widget.trackTitle.contains('Git') ||
          widget.trackTitle.contains('Testing')) {
        return [
          {
            'title': 'Basics',
            'desc': 'Git Version Control & Clean Architecture rules',
            'icon': Icons.account_tree_rounded,
            'questions': GitGithubQuiz.gitBasics,
          },
          {
            'title': 'Interviews',
            'desc': 'Feature branches & Testing types',
            'icon': Icons.group_work_rounded,
            'questions': GitGithubQuiz.gitInterview,
          },
          {
            'title': 'Common & Hard',
            'desc': 'Git Merge vs Rebase & GetIt DI',
            'icon': Icons.merge_type_rounded,
            'questions': GitGithubQuiz.gitHard,
          },
        ];
      }
      // التراك الافتراضي (Flutter الأساسي)
      else {
        return [
          {
            'title': 'Flutter Basics',
            'desc': 'Stateless vs Stateful, setState & BuildContext',
            'icon': Icons.widgets_outlined,
            'questions': AllFlutterQuestions.flutterBasics,
          },
          {
            'title': 'Performance & Layouts',
            'desc': 'ListView.builder, Overflow & const widgets',
            'icon': Icons.speed_rounded,
            'questions': AllFlutterQuestions.flutterPerformanceAndLayouts,
          },
          {
            'title': 'Expert Architecture',
            'desc': 'Three Trees, Impeller, Streams & RenderObjects',
            'icon': Icons.architecture_rounded,
            'questions': AllFlutterQuestions.flutterStateAndNavigation,
          },
          {
            'title': 'Lifecycle & State',
            'desc': 'initState, dispose, Keys & Navigation',
            'icon': Icons.sync_rounded,
            'questions': AllFlutterQuestions.flutterInterviewAdvanced,
          },
          {
            'title': 'Code Snippets',
            'desc': 'UI Layouts logic & debugging widgets',
            'icon': Icons.code_off_rounded,
            'questions': AllFlutterQuestions.flutterCodeQuestions,
          },
        ];
      }
    }

    final List<Map<String, dynamic>> categories = getCategories();

    return Scaffold(
      backgroundColor: const Color(0xFFF5F9F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFF1E293B),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.trackTitle,
          style: const TextStyle(
            color: Color(0xFF1E293B),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(24),
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final item = categories[index];
          return InkWell(
            onTap: () {
              final List<Question> selectedQuestions = item['questions'];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizScreen(
                    categoryTitle: item['title'],
                    questionsList: selectedQuestions,
                  ),
                ),
              );
            },
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFF00B4D8).withOpacity(0.3),
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF00B4D8).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Icon(
                      item['icon'],
                      color: const Color(0xFF00B4D8),
                      size: 26,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'],
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E293B),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item['desc'],
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF64748B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_rounded,
                    color: Color(0xFF94A3B8),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

