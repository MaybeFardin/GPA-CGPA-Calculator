import 'package:flutter/material.dart';

import 'cgpa_screen.dart';
import 'gpa_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('CGPA calculator'),
            centerTitle: true,

            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'GPA',
                ),
                Tab(
                  text: 'CGPA',
                ),
              ],
            ),
            backgroundColor: Colors.cyan,
          ),

          backgroundColor: Colors.grey,
          body: TabBarView(
            children: [
              GPAScreen(),
              GPAScreen(),
            ],
          )
        ) );

  }
}
