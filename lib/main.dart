import 'package:flutter/material.dart';
import 'package:job_apps/pages/splash_page.dart';
import 'package:job_apps/pages/started_page.dart';
import 'package:job_apps/provider/auth_provider.dart';
import 'package:job_apps/provider/user_provider.dart';
import 'package:provider/provider.dart';
//import 'package:path_provider/provider.dart';
//import 'package:job_apps/pages/started_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false, 
        routes: {
          '/' : (context) => SplashPage(),
          '/onboarding' : (context) => GetStartedPage(),
          
        },
        //GetStartedPage()
      ),
    );
  }
}
