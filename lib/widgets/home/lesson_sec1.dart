import 'package:flutter/material.dart';
import 'package:get_proj/widgets/home/home_section.dart';
import 'package:get_proj/widgets/home/singleLesson.dart';

class LessonsSection1 extends StatelessWidget {
  const LessonsSection1({super.key});
  @override
  Widget build (BuildContext context) {
    return homeSection(txt: '1 الدروس', child: Column(
      children: [
        singleLesson(image: 'images/onboard1.png',
        lessonTitle: 'لوحة المفاتيح'
        ),
        singleLesson(image: 'images/onboard2.png',
        lessonTitle: 'لوحة المفاتيح'
        ),
      ],
    ));
  }

  

  
}