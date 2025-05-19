import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> projects = [
      {"title": "Flipkart Clone", "description": "E-commerce website using Front-end technology in Full Stack Web Development"},
      {"title": "Portfolio App", "description": "Personal portfolio built in Flutter"},
      {"title": "AI Model Recommender", "description": "Flask app suggesting ML models"},
      {"title": "Event Management", "description": "Official website for event management using Front-end technology and Wix"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Projects")),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: const Icon(Icons.work, color: Colors.blue),
              title: Text(projects[index]["title"]!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(projects[index]["description"]!),
            ),
          );
        },
      ),
    );
  }
}
