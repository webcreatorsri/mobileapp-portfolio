import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, double> skills = {
      "Flutter": 0.55,
      "JavaScript": 0.80,
      "Python (AI/ML)": 0.85,
      "UI/UX Design": 0.60,
      "Java": 0.95,
      "MongoDB":0.45,
      "Html & CSS":0.75,
    };

    return Scaffold(
      appBar: AppBar(title: const Text("Skills")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: skills.entries.map((skill) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange.shade400),
                      const SizedBox(width: 10),
                      Text(skill.key, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 5),
                  LinearProgressIndicator(
                    value: skill.value,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
