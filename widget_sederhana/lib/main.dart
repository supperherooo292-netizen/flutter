import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          leading: const Icon(Icons.home),
          title: const Text('Flutter Widget Sederhana'),
        ),
        body: const Center(
          child: Text(
            'Halo Flutter!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}