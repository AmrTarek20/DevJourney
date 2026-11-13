import 'package:flutter/material.dart';
import 'package:flutter_quize/screens/main_layout.dart';
import 'package:flutter_quize/screens/splash_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveScaledBox(
        width: 390, 
        child: child!,
      ),
      home: const SplashScreen(),
      routes: {'home': (context) => const MainLayout()},
    );
  }
}
