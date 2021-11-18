import 'package:flutter/material.dart';
import 'package:job_apps/theme.dart';

class CustomRequired extends StatelessWidget {
  final String dotUrl;
  final String text;

  CustomRequired({this.dotUrl, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          dotUrl,
          width: 12,
          height: 12,
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: requiredmentSubTextStyle,
        ),
      ],
    );
  }
}
