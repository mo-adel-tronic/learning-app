import 'package:flutter/material.dart';
import 'package:get_proj/widgets/home/home_section.dart';
import 'package:get_proj/widgets/home/singleLesson.dart';

class LessonsSection2 extends StatelessWidget {
  const LessonsSection2({super.key});
  @override
  Widget build (BuildContext context) {
    return homeSection(txt: '2 الدروس' ,child: SizedBox(
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          singleLesson(image: 'images/onboard1.png',
        lessonTitle: 'لوحة المفاتيح', type: 2
        ),
        singleLesson(image: 'images/onboard2.png',
        lessonTitle: 'لوحة المفاتيح', type: 2
        ),
        ],
      ),
    ));
  }
}