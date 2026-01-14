import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 244, 244),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
            child: AppBar(
              title: Container(
                height: 36,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 174, 103, 103),
                  borderRadius: BorderRadius.circular(
                    6,
                  ), // remove for sharp rectangle
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rectangle inside AppBar",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
