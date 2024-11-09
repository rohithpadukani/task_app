import 'package:flutter/material.dart';
import 'package:task_app/screens/add_tasks.dart';
import 'package:task_app/screens/calendar.dart';
import 'package:task_app/screens/home.dart';
import 'package:task_app/screens/settings.dart';
import 'package:task_app/screens/tasks.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const Home(),
    const Calendar(),
    const AddTasks(),
    const Tasks(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 39, 39),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Task'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        // Set background color to black
        backgroundColor: const Color.fromARGB(255, 79, 78, 78),
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(
            0xffFDF485), // Set selected item color to white for contrast
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
