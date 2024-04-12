import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:get/get.dart';
import 'package:get_proj/colors.dart';
import 'package:get_proj/widgets/onboard_body.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  @override
  Widget build (BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'إنهاء',
      onFinish: () {
        Get.offAllNamed('/home');
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: mainColor,
      ),
      skipTextButton: Text(
        'تخطي',
        style: TextStyle(
          fontSize: 16,
          color: mainColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      controllerColor: mainColor,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: grey,
      background: [
        Image.asset(
          'images/onboard1.png',
          fit: BoxFit.contain,
          height: 400,
        ),
        Image.asset(
          'images/onboard2.png',
          fit: BoxFit.contain,
          height: 400,
        ),
        Image.asset(
          'images/onboard3.png',
          fit: BoxFit.contain,
          height: 400,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        onboardBody(context, title: 'أهلا ومرحبا بك في تطبيق الفلاتر'),
        onboardBody(context, title: 'هنا سنبدا دروس تعلم وحدات الادخال'),
        onboardBody(context, title: 'هيا لنبدأ'),
      ],
    );
  }
}