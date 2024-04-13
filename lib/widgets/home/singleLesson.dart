import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_proj/colors.dart';

Container singleLesson({required String image, required String lessonTitle, int type = 1}) {
    var margin = const EdgeInsets.only(bottom: 20);
    if(type == 2) {
      margin = const EdgeInsets.only(right: 20);
    }
    return Container(
        margin: margin,
        width: 250,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(height: 20,),
            Text(lessonTitle, 
             style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
             ),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed('/lesson');
              },
              color: mainColor,
              textColor: white,
              child: const Text('اعرض الدرس', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
            )
          ],
        ),
      );
  }