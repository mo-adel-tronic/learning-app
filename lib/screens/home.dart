import 'package:flutter/material.dart';
import 'package:get_proj/widgets/home/lesson_sec1.dart';
import 'package:get_proj/widgets/home/lesson_sec2.dart';
import 'package:get_proj/widgets/home/overview.dart';
import 'package:get_proj/widgets/home/targets.dart';
import 'package:get_proj/widgets/my_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build (BuildContext context) {
    const Widget seprator = SizedBox(height: 20,);
    return Scaffold(
      body: ListView(
        children: const [
          MyAppBar(title: 'وحدات الادخال'),
          seprator,
          OverView(),
          seprator,
          Targets(),
          seprator,
          LessonsSection1(),
          seprator,
          LessonsSection2(),
        ],
      ),
    );
  }
}