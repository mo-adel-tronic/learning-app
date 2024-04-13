import 'package:flutter/material.dart';

Widget subTitle(String txt) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.only(right: 10, bottom: 15),
    child: Text(txt, 
    textAlign: TextAlign.start, 
    textDirection: TextDirection.rtl,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600
    ),
    ),
  );
}