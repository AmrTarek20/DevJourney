import 'package:flutter/material.dart';
import 'package:flutter_quize/model/track_card.dart';
import 'package:flutter_quize/screens/category_selection_screen.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TrackCard(
          title: 'DART LANGUAGE',
          subtitle: 'Basics, OOP, Null Safety, Isolates & Code Snippets.',
          icon: Icons.code_rounded,
          accentColor: const Color.fromARGB(255, 0, 0, 0),
          questionsCount: '4 Categories',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategorySelectionScreen(
                  trackTitle: 'Dart Mastery',
                  isDart: true,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 20),
        TrackCard(
          title: 'FLUTTER FRAMEWORK',
          subtitle: 'Widgets, Lifecycle, Performance, State & Impeller.',
          accentColor: const Color(0xFF0077B6),
          questionsCount: '5 Categories',
          icon: Icons.flutter_dash_rounded,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategorySelectionScreen(
                  trackTitle: 'Flutter Mastery',
                  isDart: false,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        TrackCard(
          title: 'OOP, SOLID & ARCHITECTURE',
          subtitle:
              'Clean Architecture, Design Patterns, DI & Code Organization.',
          icon: Icons.architecture_rounded,
          accentColor: const Color(0xFF7C3AED),
          questionsCount: '4 Categories',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategorySelectionScreen(
                  trackTitle: 'Architecture & SOLID',
                  isDart: false,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        TrackCard(
          title: 'STATE MANAGEMENT',
          subtitle: 'Provider, BLoC, Cubit, Streams & Reactive Programming.',
          icon: Icons.sync_alt_rounded,
          accentColor: const Color(0xFF059669),
          questionsCount: '3 Categories',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategorySelectionScreen(
                  trackTitle: 'State Management',
                  isDart: false,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        TrackCard(
          title: 'REST APIs & NETWORKING',
          subtitle:
              'Dio, HTTP, GET/POST/PUT/DELETE, JSON Parsing & Error Handling.',
          icon: Icons.cloud_sync_rounded,
          accentColor: const Color(0xFFD97706),
          questionsCount: '4 Categories',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategorySelectionScreen(
                  trackTitle: 'REST APIs',
                  isDart: false,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        TrackCard(
          title: 'DATABASES & SQL',
          subtitle:
              'SQLite, Drift, Hive, SharedPreferences & Relational Queries.',
          icon: Icons.storage_rounded,
          accentColor: const Color(0xFFDC2626),
          questionsCount: '3 Categories',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategorySelectionScreen(
                  trackTitle: 'Databases & SQL',
                  isDart: false,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        TrackCard(
          title: 'FIREBASE BACKEND',
          subtitle:
              'Auth, Cloud Firestore, CRUD Operations & Push Notifications.',
          icon: Icons.local_fire_department_rounded,
          accentColor: const Color(0xFFF59E0B),
          questionsCount: '4 Categories',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategorySelectionScreen(
                  trackTitle: 'Firebase Mastery',
                  isDart: false,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        TrackCard(
          title: 'GIT, TESTING & CI/CD',
          subtitle:
              'Version Control, Branches, Unit/Widget Testing & Deployment.',
          icon: Icons.account_tree_rounded,
          accentColor: const Color(0xFF334155),
          questionsCount: '3 Categories',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategorySelectionScreen(
                  trackTitle: 'Git & Testing',
                  isDart: false,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
