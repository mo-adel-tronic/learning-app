import 'package:flutter/material.dart';
import 'package:get_proj/colors.dart';

Widget onboardBody (BuildContext context, {required String title}) {
  return Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
}