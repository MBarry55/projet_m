import 'package:flutter/material.dart';

class BottomApp extends StatefulWidget {
  const BottomApp({super.key});

  @override
  State<BottomApp> createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'Home',
          backgroundColor: Colors.black),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'My Project',
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.message_outlined), label: 'Message'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
    ]);
  }
}
