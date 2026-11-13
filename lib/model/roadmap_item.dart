enum MilestoneStatus { completed, current, locked }

class RoadmapItem {
  final int dayNumber;
  final String title;
  final String description;
  MilestoneStatus status;

  RoadmapItem({
    required this.dayNumber,
    required this.title,
    required this.description,
    required this.status,
  });
}


final List<RoadmapItem> roadmapData = [
  RoadmapItem(
    dayNumber: 1,
    title: "Dart & Flutter Review",
    description: "Solidify core fundamentals and state handling after a break.",
    status:
        MilestoneStatus.current, // Starts as the current available milestone
  ),
  RoadmapItem(
    dayNumber: 2,
    title: "OOP & SOLID Basics",
    description:
        "Understand Object-Oriented Programming principles and write clean, maintainable code.",
    status: MilestoneStatus.locked,
  ),
  RoadmapItem(
    dayNumber: 3,
    title: "State Management",
    description:
        "Master Provider, BLoC, or Cubit for efficient app state handling.",
    status: MilestoneStatus.locked,
  ),
  RoadmapItem(
    dayNumber: 4,
    title: "REST API & Networking",
    description:
        "Handle GET, POST, PUT, DELETE requests, error handling, and JSON parsing.",
    status: MilestoneStatus.locked,
  ),
  RoadmapItem(
    dayNumber: 5,
    title: "Local Databases & SQL",
    description:
        "Manage local data persistence using SQLite and relational queries.",
    status: MilestoneStatus.locked,
  ),
  RoadmapItem(
    dayNumber: 6,
    title: "Firebase Integration",
    description:
        "Connect apps with Authentication, Firestore, and perform CRUD operations.",
    status: MilestoneStatus.locked,
  ),
  RoadmapItem(
    dayNumber: 7,
    title: "Responsive Design",
    description:
        "Build flexible user interfaces adaptable to various screen sizes and devices.",
    status: MilestoneStatus.locked,
  ),
  RoadmapItem(
    dayNumber: 8,
    title: "Git & GitHub",
    description:
        "Version control, managing branches, commits, pushes, pulls, and merges.",
    status: MilestoneStatus.locked,
  ),
  RoadmapItem(
    dayNumber: 10,
    title: "Advanced & Clean Architecture",
    description:
        "Master Clean Architecture, Dependency Injection, Unit Testing, CI/CD, and performance optimization.",
    status: MilestoneStatus.locked,
  ),
];
