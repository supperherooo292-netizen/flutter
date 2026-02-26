import 'package:flutter/material.dart';

void main() {
  runApp(AritmatikaApp());
}

class AritmatikaApp extends StatefulWidget {
  @override
  State<AritmatikaApp> createState() => _AritmatikaAppState();
}

class _AritmatikaAppState extends State<AritmatikaApp> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();

  String hasil = "0";

  void hitung(String operasi) {
    if (angka1.text.isEmpty || angka2.text.isEmpty) {
      setState(() {
        hasil = "Input tidak boleh kosong";
      });
      return;
    }

    double a = double.parse(angka1.text);
    double b = double.parse(angka2.text);
    double h = 0;

    if (operasi == "+") {
      h = a + b;
    } else if (operasi == "-") {
      h = a - b;
    } else if (operasi == "x") {
      h = a * b;
    } else if (operasi == "/") {
      if (b == 0) {
        setState(() {
          hasil = "Tidak bisa dibagi 0";
        });
        return;
      }
      h = a / b;
    }

    setState(() {
      hasil = h.toString();
    });
  }

  void pangkat() {
    if (angka1.text.isEmpty) {
      setState(() {
        hasil = "Input angka 1 dulu";
      });
      return;
    }

    double a = double.parse(angka1.text);
    double h = a * a;

    setState(() {
      hasil = h.toString();
    });
  }

  void reset() {
    setState(() {
      angka1.clear();
      angka2.clear();
      hasil = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aritmatika Flutter"),
          backgroundColor: Colors.blue, // AppBar biru
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [

              // Judul Tambahan
              Text(
                "Kalkulator Sederhana",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              TextField(
                controller: angka1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Masukkan angka 1"),
              ),
              TextField(
                controller: angka2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Masukkan angka 2"),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => hitung("+"),
                    child: Text("+"),
                  ),
                  ElevatedButton(
                    onPressed: () => hitung("-"),
                    child: Text("-"),
                  ),
                  ElevatedButton(
                    onPressed: () => hitung("x"),
                    child: Text("x"),
                  ),
                  ElevatedButton(
                    onPressed: () => hitung("/"),
                    child: Text("/"),
                  ),
                ],
              ),

              SizedBox(height: 10),

              // Tombol tambahan
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: pangkat,
                    child: Text("a²"),
                  ),
                  ElevatedButton(
                    onPressed: reset,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Text("RESET"),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Text(
                "Hasil: $hasil",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}