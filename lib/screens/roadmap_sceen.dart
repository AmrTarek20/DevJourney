import 'package:flutter/material.dart';
import 'package:flutter_quize/model/roadmap_item.dart';
import 'package:flutter_quize/widget/roadmap_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class RoadmapScreen extends StatefulWidget {
  const RoadmapScreen({super.key});

  @override
  State<RoadmapScreen> createState() => _RoadmapScreenState();
}

class _RoadmapScreenState extends State<RoadmapScreen> {    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title:  Text(
          "YOUR LEARNING PATH",
          style:
          GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF1E293B),
            letterSpacing: 1.1,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemCount: roadmapData.length,
        itemBuilder: (context, index) {
          final item = roadmapData[index];
          return RoadmapTile(
            item: item,
            isLast: index == roadmapData.length - 1,
            onTap: () {
              setState(() {
                item.status = MilestoneStatus.completed;
                if (index + 1 < roadmapData.length) {
                  roadmapData[index + 1].status = MilestoneStatus.current;
                }
              });
            },
          );
        },
      ),
    );
  }
}
