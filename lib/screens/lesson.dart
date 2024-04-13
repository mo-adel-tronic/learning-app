import 'package:flutter/material.dart';

class Lesson extends StatelessWidget {
  const Lesson({super.key});
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Text('lesson page', style: TextStyle(fontSize: 30),),
    );
  }
}