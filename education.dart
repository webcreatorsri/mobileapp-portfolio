import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> education = [
      {"degree": "SSLC", "institution": "Bharathidhasan matric higher secondary school", "year": "2019-2020", "percentage": "99.9"},
      {"degree": "HSC", "institution": "Bharathidhasan matric higher secondary school", "year": "2021 - 2022", "percentage": "87.8"},
      {"degree": "B.Tech IT", "institution": "Adhiparasakthi Engineering College", "year": "2022 - 2026", "percentage": "8.77 GPA"},
      {"degree": "Web Development Course", "institution": "Simplilearn", "year": "2024", "percentage": "Completed"},
      {"degree": "AI Course", "institution": "Great Learning Academy", "year": "2024", "percentage": "Completed"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Education")),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: education.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.school, color: Colors.green),
            title: Text(education[index]["degree"]!, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("${education[index]["institution"]!} - ${education[index]["year"]!}\nPercentage: ${education[index]["percentage"]!}"),
          );
        },
      ),
    );
  }
}
