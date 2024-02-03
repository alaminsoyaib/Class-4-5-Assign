// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? text;
  CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 2,
      overflow: TextOverflow.fade,
    );
  }
}
