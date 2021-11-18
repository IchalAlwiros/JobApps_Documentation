import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_apps/theme.dart';
import 'package:job_apps/widget/customrequaired.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;
  @override
  Widget build(BuildContext context) {
    Widget applyButton() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 51.0,
          left: 80,
        ),
        child: Container(
          width: 200,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  66,
                ),
              ),
              backgroundColor: Color(0xffFFA801),
            ),
            onPressed: () {
              setState(() {
                isApplied = !isApplied;
              });
            },
            child: Text(
              'Apply for Job',
              style: buttonTextStyle,
            ),
          ),
        ),
      );
    }

    Widget cancelButton() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 51.0,
          left: 80,
        ),
        child: Container(
          width: 200,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  66,
                ),
              ),
              backgroundColor: Color(0xffFD4F56),
            ),
            onPressed: () {
              setState(() {
                isApplied = !isApplied;
              });
            },
            child: Text(
              'Cancel Apply',
              style: buttonTextStyle,
            ),
          ),
        ),
      );
    }

    Widget successAppliedMessages() {
      return Container(
        padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Color(0xffECEDF1),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Text(
          'You have applied this job and the \nrecruiter will contact you',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: Color(0xffA2A6B4),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              isApplied ? successAppliedMessages() : SizedBox(),
              Image.asset(
                'assets/allogo.png',
                width: 60,
                height: 60,
              ),
              SizedBox(height: 20),
              Text(
                'Front-End Developer',
                style: jobAplyTextStyle,
              ),
              Text(
                'Google, Inc • Jakarta',
                style: companyTextStyle,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the job',
                      style: requiredmenttitleTextStyle,
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomRequired(
                          dotUrl: 'assets/dot.png',
                          text: 'Full-Time On Site',
                        ),
                        SizedBox(height: 16),
                        CustomRequired(
                          dotUrl: 'assets/dot.png',
                          text: 'Start at \$18,000 per month',
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Qualifications',
                          style: requiredmenttitleTextStyle,
                        ),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomRequired(
                              dotUrl: 'assets/dot.png',
                              text: 'Full-Time On Site',
                            ),
                            SizedBox(height: 16),
                            CustomRequired(
                              dotUrl: 'assets/dot.png',
                              text: 'Start at \$18,000 per month',
                            ),
                            SizedBox(height: 16),
                            CustomRequired(
                              dotUrl: 'assets/dot.png',
                              text: 'Full-Time On Site',
                            ),
                            SizedBox(height: 16),
                            CustomRequired(
                              dotUrl: 'assets/dot.png',
                              text: 'Start at \$18,000 per month',
                            ),
                            SizedBox(height: 16),
                            CustomRequired(
                              dotUrl: 'assets/dot.png',
                              text: 'Full-Time On Site',
                            ),
                            SizedBox(height: 16),
                            CustomRequired(
                              dotUrl: 'assets/dot.png',
                              text: 'Start at \$18,000 per month',
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Responsibilities',
                              style: requiredmenttitleTextStyle,
                            ),
                            SizedBox(height: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomRequired(
                                  dotUrl: 'assets/dot.png',
                                  text: 'Full-Time On Site',
                                ),
                                SizedBox(height: 16),
                                CustomRequired(
                                  dotUrl: 'assets/dot.png',
                                  text: 'Start at \$18,000 per month',
                                ),
                              ],
                            ),
                            isApplied ? cancelButton() : applyButton(),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 104.0,
                                top: 10,
                                bottom: 15,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Message Recruiter',
                                    style: massageApplyTextStyle,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
