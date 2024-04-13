import 'package:flutter/material.dart';
import 'package:get_proj/colors.dart';
import 'package:get_proj/widgets/home/home_section.dart';

class Targets extends StatelessWidget {
  const Targets({super.key});
  @override
  Widget build (BuildContext context) {
    return homeSection(txt: 'الأهداف', 
    child: Column(
      children: [
        singleTarget('الهدف الأول'),
        singleTarget('الهدف الثاني'),
        singleTarget('الهدف الثالث'),
      ],
    )
    );
  }

  Container singleTarget(String target) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(target, style: const TextStyle(
              fontSize: 20,
            ),),
            Icon(Icons.arrow_left, color: mainColor, size: 30,)
          ],
        ),
    );
  }
}