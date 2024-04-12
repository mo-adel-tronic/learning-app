import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_proj/screens/home.dart';
import 'package:get_proj/screens/onboarding.dart';
import 'package:get_proj/screens/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build (BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Splash()),
        GetPage(name: '/onboard', page: () => const Onboarding()),
        GetPage(name: '/home', page: () => const Home()),
      ],
    );
  }
}