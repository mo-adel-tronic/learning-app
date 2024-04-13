import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_proj/colors.dart';
import 'package:get_proj/widgets/home/home_section.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});
  @override
  Widget build (BuildContext context) {
    return homeSection(txt: 'نظرة عامة', child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            overViewItem(path: '/lesson', icon: Icons.anchor, txt: 'الاهداف'),
            overViewItem(path: '/lesson', icon: Icons.list, txt: 'التعليمات'),
            overViewItem(path: '/lesson', icon: Icons.group, txt: 'فريق العمل'),
          ],
        ));
  }

  InkWell overViewItem({required String path, required IconData icon, required String txt}) {
    return InkWell(
              onTap: () {
                Get.toNamed(path);
              },
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(icon, color: mainColor,),
                  ),
                  const SizedBox(height: 10,),
                  Text(txt, style: const TextStyle(
                    fontSize: 18
                  ),)
                ],
              ),
            );
  }
}