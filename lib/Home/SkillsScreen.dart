import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> skills = [
    {'name': 'Android SDK', 'icon': Icons.android},
    {'name': 'Java', 'icon': Icons.code},
    {'name': 'Kotlin', 'icon': Icons.code},
    {'name': 'Flutter', 'icon': Icons.flutter_dash},
    {'name': 'Dart', 'icon': Icons.code},
    {'name': 'Node.js', 'icon': Icons.code},
    {'name': 'JSON', 'icon': Icons.data_object},
    {'name': 'SQLite', 'icon': Icons.storage},
    {'name': 'Realm', 'icon': Icons.storage},
    {'name': 'REST APIs', 'icon': Icons.api},
    {'name': 'SOAP APIs', 'icon': Icons.api},
    {'name': 'Push Notifications', 'icon': Icons.notifications},
    {'name': 'RxJava', 'icon': Icons.code},
    {'name': 'RxAndroid', 'icon': Icons.android},
    {'name': 'Google Maps API', 'icon': Icons.map},
    {'name': 'OpenCV Library', 'icon': Icons.camera},
    {'name': 'Payment Gateway', 'icon': Icons.payment},
  ];



  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 1000 ? 4 : 3,
        childAspectRatio: 1,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: skills.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                skills[index]['icon'],
                size: 48,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 8),
              Text(
                skills[index]['name'],
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
