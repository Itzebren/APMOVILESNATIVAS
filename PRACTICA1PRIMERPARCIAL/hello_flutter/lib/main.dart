import 'package:flutter/material.dart';

void main() {
  runApp(const HolaAndroidApp());
}

class HolaAndroidApp extends StatelessWidget {
  const HolaAndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Android',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFFFD1DC),
      appBar: AppBar(
        title: const Text('Ejercicio 1'),
        backgroundColor: Colors.pink[100],
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Hello Android',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }
}