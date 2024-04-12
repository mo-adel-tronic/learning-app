import 'package:flutter/material.dart';
import 'package:get_proj/constants.dart';
import 'package:get_proj/widgets/btn.dart';
import 'package:get/get.dart';

class BtnsList extends StatelessWidget {
  final Screen page;
  const BtnsList({super.key, required this.page});

  List<Widget> getBtns() {
    List<Widget> btns = [];
    switch(page) {
      case Screen.splash:
        btns.addAll([
          const Text('Splash page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          myBtn(navigate: () {
            Get.toNamed('/onboard');
          }, txt: 'go to onboard by toNamed'),
          myBtn(navigate: () {
            Get.offNamed('/home');
          }, txt: 'go to home by offNamed'),
          myBtn(navigate: () {
            Get.offAllNamed('/lesson');
          }, txt: 'go to lesson by offAllNamed'),
        ]);
      case Screen.onboard:
        btns.addAll([
          const Text('Onboarding page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          myBtn(navigate: () {
            Get.toNamed('/');
          }, txt: 'go to splash by toNamed'),
          myBtn(navigate: () {
            Get.offAllNamed('/home');
          }, txt: 'go to home by offAllNamed'),
          myBtn(navigate: () {
            Get.offNamed('/lesson');
          }, txt: 'go to lesson by offNamed'),
        ]);
      case Screen.home:
        btns.addAll([
          const Text('Home page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          myBtn(navigate: () {
            Get.offAllNamed('/');
          }, txt: 'go to splash by offAllNamed'),
          myBtn(navigate: () {
            Get.offNamed('/onboard');
          }, txt: 'go to onboard by offNamed'),
          myBtn(navigate: () {
            Get.toNamed('/lesson');
          }, txt: 'go to lesson by toNamed'),
        ]);
      case Screen.lesson:
        btns.addAll([
          const Text('Lesson page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          myBtn(navigate: () {
            Get.toNamed('/');
          }, txt: 'go to splash by toNamed'),
          myBtn(navigate: () {
            Get.offAllNamed('/onboard');
          }, txt: 'go to onboard by offAllNamed'),
          myBtn(navigate: () {
            Get.offNamed('/home');
          }, txt: 'go to home by offNamed'),
        ]);
    }
    btns.add(myBtn(navigate: () {
            Get.back();
          }, txt: 'back'));
    return btns;
  }
  @override
  Widget build (BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: getBtns(),
      ),
    );
  }
}