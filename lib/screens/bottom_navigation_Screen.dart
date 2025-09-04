import 'package:covid_dashboard_ui/config/palette.dart';
import 'package:covid_dashboard_ui/screens/stats_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BottomNavScreen extends StatefulWidget {
   const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List screens = const [
     HomeScreen(),
     StatsScreen(),
    Dd(),
    Aere(),

  ];
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:screens[currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPageIndex,
          onTap: (index){setState(() {
            currentPageIndex=index;
          });},
          items:
            [Icons.home, Icons.insert_chart, Icons.event_note, Icons.info].asMap()
                .map((key, value) => MapEntry(key,
                 BottomNavigationBarItem(
                   label: '',
                    icon: Container(
                      decoration: BoxDecoration(color: currentPageIndex==key? Colors.blue[600]:Colors.transparent,borderRadius: BorderRadius.circular(20.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 6.0),
                        child: Icon(value),
                      ),
                    ),
                ))).values.toList(),)
      ),
    );
  }
}

class Dd extends StatelessWidget {
  const Dd({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Aere extends StatelessWidget {
  const Aere({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


