import 'package:flutter/material.dart';
import 'package:get_proj/constants.dart';
import 'package:get_proj/widgets/btn_list.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  @override
  Widget build (BuildContext context) {
    return const Scaffold(
      body: BtnsList(page: Screen.onboard),
    );
  }
}