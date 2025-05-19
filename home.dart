import 'package:flutter/material.dart';
import 'projects.dart';
import 'education.dart';
import 'skills.dart';
import 'settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Portfolio")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNavButton(context, "Projects", const ProjectsScreen()),
          _buildNavButton(context, "Education", const EducationScreen()),
          _buildNavButton(context, "Skills", const SkillsScreen()),
          _buildNavButton(context, "Settings", const SettingsScreen()),
        ],
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page));
        },
        child: Text(title),
      ),
    );
  }
}
