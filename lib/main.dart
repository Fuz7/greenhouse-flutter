import 'package:flutter/material.dart';
import 'control/index.dart';
import 'crop/index.dart';
import 'home/index.dart';
import 'navbar/index.dart';
import 'navbar/header.dart';
import 'profile.dart';

import 'plants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  final List<Widget> _screens = const [
    HomeTab(),
    ControlScreen(),
    CropScreen(),
    PlantsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 244, 244),
      body: _screens[_index],
      appBar: const ProfileAppBar(),
      bottomNavigationBar: MyBottomNav(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
      ),
    );
  }
}
