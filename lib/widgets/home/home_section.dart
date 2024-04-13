import 'package:flutter/material.dart';
import 'package:get_proj/colors.dart';
import 'package:get_proj/widgets/titles.dart';

Column homeSection({required String txt, required Widget child}) {
    return Column(
    children: [
      subTitle(txt),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        color: grey,
        child: child,
      )
    ],
  );
  }