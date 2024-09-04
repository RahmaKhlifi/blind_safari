import 'package:flutter/material.dart';

class VisuallyImpairedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visually Impaired'),
      ),
      body: Center(
        child: Text('Welcome to the Visually Impaired Screen'),
      ),
    );
  }
}
