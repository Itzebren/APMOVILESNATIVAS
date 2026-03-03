import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // AQUÍ EL FONDO LILA (Tono suave y profesional)
        backgroundColor: Colors.deepPurple[100],

        // AQUÍ EL TÍTULO QUE PEDISTE
        appBar: AppBar(
          title: const Text("Práctica 1 Desarrollo de aplicaciones moviles"),
          backgroundColor: Colors.deepPurple[300], // Un lila un poco más fuerte para la barra
        ),

        body: const Center(
          child: Text(
            'Hello Android',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}