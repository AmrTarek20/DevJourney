import 'package:flutter/material.dart';
import 'package:flutter_quize/widget/progress_widget.dart';


class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(149, 245, 249, 248),
      body: const ProgressWidget()
    );
  }
}

