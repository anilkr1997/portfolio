import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsScreen extends StatelessWidget {
  final Map<String, List<Map<String, dynamic>>> skills = {
    "Technologies": [
      {"name": "Android SDK", "icon": FontAwesomeIcons.android,},
      {"name": "Flutter SDK", "icon":Icons.flutter_dash},
      {"name": "Material Design", "icon": Icons.design_services},
      {"name": "Firebase", "icon": FontAwesomeIcons.fire},
      {"name": "Android Jetpack", "icon": FontAwesomeIcons.jetFighter},
    ],
    "Programming Languages": [
      {"name": "Java", "icon": FontAwesomeIcons.java},
      {"name": "Kotlin", "icon": FontAwesomeIcons.k},
      {"name": "Dart", "icon": FontAwesomeIcons.bullseye},
      {"name": "Node.js", "icon": FontAwesomeIcons.nodeJs},
      {"name": "JSON", "icon": FontAwesomeIcons.js},
    ],
    "Databases": [
      {"name": "SQLite", "icon": FontAwesomeIcons.database},
      {"name": "Realm", "icon": FontAwesomeIcons.database},
      {"name": "Room Database", "icon": FontAwesomeIcons.database},
      {"name": "DataStore", "icon": FontAwesomeIcons.database},
      {"name": "SpatiLite", "icon": FontAwesomeIcons.database},
    ],
    "Tools": [
      {"name": "Logcat", "icon": Icons.bug_report},
      {"name": "Android Studio", "icon": FontAwesomeIcons.android},
      {"name": "Visual Studio Code", "icon": FontAwesomeIcons.code},
    ],
    "APIs": [
      {"name": "Rest API", "icon": FontAwesomeIcons.plug},
      {"name": "SOAP API", "icon": FontAwesomeIcons.soap},
      {"name": "Google Maps API", "icon": FontAwesomeIcons.mapLocationDot},
      {"name": "ArcGIS Map API", "icon": FontAwesomeIcons.map},
      {"name": "Bhavna Map API", "icon": FontAwesomeIcons.mapPin},
    ],
  };
  // final Map<String, List<String>> skills = {
  //   "Technologies": [
  //     "Android SDK",
  //     "Flutter SDK",
  //     "Material Design Components",
  //     "Firebase",
  //     "Android Jetpack Components"
  //   ],
  //   "Programming Languages": [
  //     "Java",
  //     "Kotlin",
  //     "Dart",
  //     "Node.js",
  //     "JSON"
  //   ],
  //   "Databases": [
  //     "SQLite",
  //     "Realm",
  //     "Room Database",
  //     "DataStore",
  //     "Spatilite"
  //   ],
  //   "Tools": [
  //     "Logcat",
  //     "Android Studio",
  //     "Visual Studio Code"
  //   ],
  //   "APIs": [
  //     "Rest API",
  //     "SOAP API",
  //     "Google Maps API",
  //     "ArcGIS Map API",
  //     "Bhavna Map API",
  //     "OLA Map API"
  //   ],
  // };

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: skills.entries.map((entry) => _buildSkillCategory(context, entry.key, entry.value)).toList(),
    );
  }

  Widget _buildSkillCategory(BuildContext context, String category, List<Map<String, dynamic>> categorySkills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
            children: categorySkills.map((skill) {
              return Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(skill["icon"],size: 15,color: Colors.blue,),
                ),
                label: Text(skill["name"]),
                backgroundColor: Colors.white,
                labelStyle: TextStyle(color: Theme.of(context).primaryColor),
              );
            }).toList(),
        ),
        const SizedBox(height: 24),
      ],
    );
  }


}
