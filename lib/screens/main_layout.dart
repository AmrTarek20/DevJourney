import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quize/screens/home_screen.dart';
import 'package:flutter_quize/screens/progress_screen.dart';
import 'package:flutter_quize/screens/roadmap_sceen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final NotchBottomBarController _controller = NotchBottomBarController(
    index: 0,
  );

  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _screens = [
    const HomeScreen(),
    const ProgressScreen(),
    const RoadmapScreen(),
  ];

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: (index) {
          _controller.jumpTo(index);
        },
        children: _screens,
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        color: const Color.fromARGB(184, 255, 255, 255),
        showLabel: true,
        textOverflow: TextOverflow.ellipsis,
        notchColor: const Color(0xFF00B4D8),
        removeMargins: false,
        bottomBarWidth: 500,
        durationInMilliSeconds: 300,
        elevation: 100,
        kBottomRadius: 32.0,

        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(Icons.home_rounded, color: Color(0xFF94A3B8)),
            activeItem: Icon(Icons.home_rounded, color: Colors.white),
            itemLabel: 'Home',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.bar_chart_rounded,
              color: Color(0xFF94A3B8),
            ),
            activeItem: Icon(Icons.bar_chart_rounded, color: Colors.white),
            itemLabel: 'Progress',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.map_rounded, color: Color(0xFF94A3B8)),
            activeItem: Icon(Icons.map_rounded, color: Colors.white),
            itemLabel: 'Roadmap',
          ),
        ],
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        kIconSize: 24.0,
      ),
    );
  }
}
