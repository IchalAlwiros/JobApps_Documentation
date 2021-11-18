import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_apps/theme.dart';
import 'package:job_apps/widget/customlist.dart';
import 'package:job_apps/widget/job_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, right: 25, left: 25),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Howdy',
                      style: titleTextStyle,
                    ),
                    Text(
                      'Ichal Alwiros',
                      style: subtitleTextStyle,
                    )
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/Pas_Foto.png',
                  width: 58,
                  height: 58,
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hot Categories', style: titleCategory),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection:
                    Axis.horizontal, //untuk menyecrol kesamping pada row
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      JobCard(
                          text: 'Web Developer',
                          imageUrl: 'assets/card_category.png'),
                      SizedBox(width: 16),
                      JobCard(
                          text: 'App Designer',
                          imageUrl: 'assets/card_category2.png'),
                      SizedBox(width: 16),
                      JobCard(
                          text: 'Content Writer ',
                          imageUrl: 'assets/card_category3.png'),
                      SizedBox(width: 16),
                      JobCard(
                          text: 'Video Grapher ',
                          imageUrl: 'assets/card_category4.png'),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  'Just Posted',
                  style: titleCategory,
                ),
              ),
              SizedBox(
                height: 24.5,
              ),
              CustomList(
                imageUrl: 'assets/allogo.png',
                jobtitle: 'Front-End Developer',
                companyName: 'Alwiros',
              ),
              SizedBox(
                height: 24.5,
              ),
              CustomList(
                imageUrl: 'assets/google-icon 1.png',
                jobtitle: 'Front-End Developer',
                companyName: 'Google',
              ),
              SizedBox(
                height: 24.5,
              ),
              CustomList(
                imageUrl: 'assets/facebook-3 1.png',
                jobtitle: 'Front-End Developer',
                companyName: 'Google',
              ),
              SizedBox(
                height: 24.5,
              ),
              CustomList(
                imageUrl: 'assets/instagram-2-1 1.png',
                jobtitle: 'Front-End Developer',
                companyName: 'Google',
              ),
              SizedBox(
                height: 24.5,
              ),
              CustomList(
                imageUrl: 'assets/google-icon 1.png',
                jobtitle: 'Front-End Developer',
                companyName: 'Google',
              ),
              SizedBox(
                height: 24.5,
              ),
              CustomList(
                imageUrl: 'assets/google-icon 1.png',
                jobtitle: 'Front-End Developer',
                companyName: 'Google',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top:30 ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xffFFA801),

          //currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Icon_apps_outline.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Icon_notification_outline.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Icon_love_outline.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Icon_user_outline.png'),
              ),
              label: '',
            ),
            
            
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [header(), body()],
        ),
      ),
    );
  }
}
