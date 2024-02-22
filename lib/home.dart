import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Home page'),)),
      body: Container(
        color: Colors.cyan.shade100,
        child: Center(child: Icon(Icons.home, color: Colors.white.withOpacity(0.8),)),
      ),
    );
  }
}
