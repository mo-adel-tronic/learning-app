import 'package:flutter/material.dart';
import 'package:get_proj/colors.dart';
Icon icon = Icon(Icons.notification_add, color: white,);
class MyAppBar extends StatelessWidget {
  final String title;
  const MyAppBar({super.key, required this.title});
  @override
  Widget build (BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      color: mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          Text(title, style: TextStyle(
            color: white,
            fontSize: 25,
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}