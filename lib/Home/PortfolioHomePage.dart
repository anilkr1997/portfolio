import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Home/ProjectsScreen.dart';

import 'ContactScreen.dart';
import 'ExperienceScreen.dart';
import 'HomeScreen.dart';
import 'SkillsScreen.dart';

class PortfolioHomePage extends StatefulWidget {
  @override
  _PortfolioHomePageState createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    ProjectsScreen(),
    SkillsScreen(),
    ExperienceScreen(),
    ContactScreen(),
  ];
  final List<String> _titles = [
  'MrAppbuilder',
  'Projects',
  'Skills',
  'Experience',
  'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:  Text(_titles[_selectedIndex],style: const TextStyle(color: Colors.white,fontStyle: FontStyle.normal)),
        backgroundColor: Theme.of(context).primaryColorDark),
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width > 600)
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              backgroundColor: Theme.of(context).primaryColor,
              selectedIconTheme: IconThemeData(color: Theme.of(context).textSelectionTheme.selectionColor),
              unselectedIconTheme: const IconThemeData(color: Colors.white70),
              selectedLabelTextStyle: TextStyle(color: Theme.of(context).textSelectionTheme.selectionColor),
              unselectedLabelTextStyle: const TextStyle(color: Colors.white70),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.work),
                  label: Text('Projects'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.build),
                  label: Text('Skills'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.business),
                  label: Text('Experience'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.contact_mail),
                  label: Text('Contact'),
                ),
              ],
            ),
          Expanded(
            child: _screens[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width <= 600
          ? BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).secondaryHeaderColor,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projects'),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: 'Skills'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Experience'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Contact'),
        ],
      )
          : null,
    );
  }
}

