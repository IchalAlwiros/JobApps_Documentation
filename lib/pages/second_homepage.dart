import 'package:flutter/material.dart';
import 'package:job_apps/theme.dart';
import 'package:job_apps/widget/customlist.dart';
import 'package:job_apps/widget/job_card.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitleHome;
  final String imageUrl;

  SecondHomePage({this.jobTitleHome, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                      ),
                      child: Container(
                          width: double.infinity,
                          height: 270,
                          child: Image.asset(
                            imageUrl,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 190, left: 24),
                      child: Text(jobTitleHome, style: jobTitleTextStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 230, left: 24),
                      child:
                          Text('12,309 available', style: jobSubtitleTextStyle),
                    )
                  ],
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Big Companies',
                          style: titleCategory,
                        ),
                        SizedBox(height: 24.5),
                        CustomList(
                          imageUrl: 'assets/allogo.png',
                          jobtitle: 'Graphic Desainer',
                          companyName: 'Alwiros',
                        ),
                        SizedBox(height: 24.5),
                        CustomList(
                          imageUrl: 'assets/allogo.png',
                          jobtitle: 'Graphic Desainer',
                          companyName: 'Alwiros',
                        ),
                        SizedBox(height: 24.5),
                        CustomList(
                          imageUrl: 'assets/allogo.png',
                          jobtitle: 'Graphic Desainer',
                          companyName: 'Alwiros',
                        ),
                        SizedBox(height: 24.5),
                        CustomList(
                          imageUrl: 'assets/allogo.png',
                          jobtitle: 'Graphic Desainer',
                          companyName: 'Alwiros',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Up',
                          style: titleCategory,
                        ),
                        SizedBox(height: 24.5),
                        CustomList(
                          imageUrl: 'assets/allogo.png',
                          jobtitle: 'Graphic Desainer',
                          companyName: 'Alwiros',
                        ),
                        SizedBox(height: 24.5),
                        CustomList(
                          imageUrl: 'assets/allogo.png',
                          jobtitle: 'Graphic Desainer',
                          companyName: 'Alwiros',
                        ),
                        SizedBox(height: 24.5),
                        CustomList(
                          imageUrl: 'assets/allogo.png',
                          jobtitle: 'Graphic Desainer',
                          companyName: 'Alwiros',
                        ),
                        SizedBox(height: 24.5),
                        CustomList(
                          imageUrl: 'assets/allogo.png',
                          jobtitle: 'Graphic Desainer',
                          companyName: 'Alwiros',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
