import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application/Generateqr.dart';
import 'package:flutter_application/Scanqr.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test Page",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> get createState => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => ScanQR())),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "QR Code Scanner",
                style: TextStyle(fontSize: 30),
              ),
            )),
        SizedBox(
          height: 30,
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GenerateQR()));
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "QR Code Generator",
                  style: TextStyle(fontSize: 30),
                ),
              )),
        )
      ]),
    );
  }
}
