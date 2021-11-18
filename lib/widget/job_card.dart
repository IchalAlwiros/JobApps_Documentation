import 'package:flutter/material.dart';
import 'package:job_apps/pages/second_homepage.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:job_apps/theme.dart';

class JobCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  JobCard({this.text, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondHomePage(
              jobTitleHome: text,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 16),
            child: Text(text, style: subBox),
          ),
        ),
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(imageUrl))),
      ),
    );
  }
}
