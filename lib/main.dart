import 'package:flutter/material.dart';

import 'Home/PortfolioHomePage.dart';

void main() {
  runApp(const MyApp());
}
//@#$Anil@1997
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Anil Kumar Maurya',
      theme: ThemeData(
        primaryColor: const Color(0xFF1E88E5),
        hintColor: const Color(0xFFFFC107),
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF1E88E5)),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF1E88E5)),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
      home: PortfolioHomePage(),
    );
  }
}


