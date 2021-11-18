import 'package:flutter/material.dart';
import 'package:job_apps/pages/detailpage.dart';
import 'package:job_apps/theme.dart';

class CustomList extends StatelessWidget {
  final String jobtitle;
  final String imageUrl;
  final String companyName;

  CustomList({this.jobtitle, this.imageUrl, this.companyName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ),
          );
        },
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 45,
              height: 45,
            ),
            SizedBox(width: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobtitle,
                  style: jobTextStyle,
                ),
                Text(
                  companyName,
                  style: companyTextStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
