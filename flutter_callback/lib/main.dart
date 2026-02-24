import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Callback Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: CallbackExample(),
    );
  }
}

class CallbackExample extends StatelessWidget {
  const CallbackExample({super.key});

  // Fungsi callback yang menerima string
  void _showMessage(String message) {
    debugPrint('Message received: $message');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Callback Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Memanggil fungsi callback saat tombol ditekan
                _showMessage('Button pressed');
              },
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}