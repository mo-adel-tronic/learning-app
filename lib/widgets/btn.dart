import 'package:flutter/material.dart';
import 'package:get_proj/constants.dart';

MaterialButton myBtn({required void Function()? navigate, required String txt}) {
  return MaterialButton(
    onPressed: navigate,
    color: mainColor,
    textColor: white,
    child: Text(
      txt,
      style: const TextStyle(fontSize: 20),
    ),
  );
}
