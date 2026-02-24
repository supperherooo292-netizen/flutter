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
          backgroundColor: Colors.green[800],
          leading: const Icon(Icons.home),
          title: const Text('Flutter Layout'),
        ),

        // YANG DIMODIFIKASI
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(Icons.archive),
                  SizedBox(width: 8),
                  Text(
                    'Artikel Terbaru',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Borobudur_Temple.jpg/320px-Borobudur_Temple.jpg',
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Candi Borobudur'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}