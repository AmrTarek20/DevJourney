#  Junior Flutter Developer Roadmap & Quiz App

<p align="center">
  <b>An interactive, cross-platform mobile application built with Flutter and Dart, designed to guide aspiring Flutter developers through a structured technical roadmap and test their expertise with comprehensive quiz modules.</b>
</p>

---

## About the Project & Objectives

As an aspiring Flutter developer and educational technology specialist, this application was engineered to bridge the gap between theoretical knowledge and practical mastery. It serves as an all-in-one interactive learning companion and technical assessment tool for junior developers preparing for real-world Flutter engineering roles.

### Core Objectives:
- **Structured Learning Path:** A comprehensive day-by-day roadmap covering core Dart fundamentals up to Advanced Clean Architecture and CI/CD.
- **Technical Assessment:** Deep-dive quiz banks categorized by domain to rigorously test fundamental and interview-level concepts.
- **Performance Analytics:** Real-time progress tracking, accuracy metrics, and statistics overview.
- **Polished UX/UI:** Modern, responsive interface featuring smooth animations, custom bottom navigation, and a robust design system.

---

## Tech Stack & Packages

- **Framework:** Flutter (Dart SDK `^3.11.0`)
- **State Management & Architecture:** Reactive State Handling & Clean Separation of Concerns
- **UI & Navigation:**
  - `animated_notch_bottom_bar` — For fluid, animated bottom navigation.
  - `responsive_framework` — Implemented `ResponsiveScaledBox` (width: 390) for flawless cross-device scaling.
  - `google_fonts` — Custom typography (Poppins) for a clean, modern aesthetic.
  - `flutter_custom_clippers` — Custom visual containers and shapes.

---

## Key Features

- **Immersive Splash Screen:** Features a custom code-background layout (`code snippet aesthetic`) with automatic routing after initialization.
- **Interactive Learning Roadmap:** Milestone-based tracking system (`Completed`, `Current`, `Locked`) guiding users step-by-step through their learning journey.
- **Comprehensive Quiz Banks:**
  - **Dart Language:** Basics, OOP, Null Safety, Isolates, Event Loop, and Code Snippets.
  - **Flutter Framework:** Widgets, Lifecycle, Performance (`ListView.builder`), Three Trees, and Impeller.
  - **Architecture & SOLID:** Clean Architecture, Dependency Injection, and Design Patterns.
  - **State Management:** Provider, BLoC, Cubit, and Reactive Streams.
  - **Networking & Databases:** REST APIs (Dio/HTTP), SQLite, Drift, SharedPreferences, and SQL Queries.
  - **Backend & Tooling:** Firebase Authentication & Firestore, Git Version Control, and Testing types.
- **Progress & Statistics Dashboard:** Calculates live accuracy percentages, total quizzes taken, correct answers, and questions solved dynamically via `UserStats`.
- **Interactive Quiz Flow:** Immediate score evaluation, custom feedback messages based on performance percentage, and seamless navigation flow.

---

## Project Architecture (`lib/`)

The project follows a clean, modular file structure to maintain high scalability and readability:

```text
lib/
│
├── model/           # Data models, quiz banks, roadmap items, and UserStats logic
│   ├── dart_quiz.dart
│   ├── flutter_quize.dart
│   ├── oop_quiz.dart
│   ├── statemangement_quize.dart
│   ├── api.dart
│   ├── local_databases_sql_quiz.dart
│   ├── firebase._quiz.dart
│   ├── git_github_quiz.dart
│   ├── roadmap_item.dart
│   └── user_state.dart
│
├── screens/         # Full application screens
│   ├── splash_screen.dart
│   ├── main_layout.dart
│   ├── home_screen.dart
│   ├── progress_screen.dart
│   ├── roadmap_sceen.dart
│   ├── category_selection_screen.dart
│   ├── quize_screen.dart
│   └── result_screen.dart
│
├── widget/          # Reusable UI components & custom cards
│   ├── home_widget.dart
│   ├── progress_widget.dart
│   ├── roadmap_tile.dart
│   ├── stat_card.dart
│   └── track_card.dart
│
└── main.dart        # Application entry point & Responsive framework setup
