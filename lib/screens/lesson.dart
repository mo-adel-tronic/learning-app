import 'package:flutter/material.dart';
import 'package:get_proj/constants.dart';
import 'package:get_proj/widgets/btn_list.dart';

class Lesson extends StatelessWidget {
  const Lesson({super.key});
  @override
  Widget build (BuildContext context) {
    return const Scaffold(
      body: BtnsList(page: Screen.lesson),
    );
  }
}