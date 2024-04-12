import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_proj/colors.dart';

// Content of Splash
Map<String,Widget> splashContent = {
  'icon': const Icon(Icons.book, size: 45,),
  'title': Text('وحدات الإدخال', 
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: white
    ),
  ) 
};

// Column in splash
List<Widget> splashColumn = [
  Container(
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(50)
    ),
    padding: const EdgeInsets.all(20),
    margin: const EdgeInsets.only(bottom: 20),
    child: splashContent['icon'],
  ),
  splashContent['title']!
];

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _Splash();
}

class _Splash extends State<Splash> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () => Get.offNamed('/onboard'));
    super.initState();
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: splashColumn,
        ),
      ),
    );
  }
}