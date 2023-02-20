import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const Canvas());
}

class Canvas extends StatelessWidget {
  const Canvas();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}