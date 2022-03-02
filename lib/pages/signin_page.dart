import 'package:flutter/material.dart';
import 'package:job_apps/pages/signup_pages.dart';
import 'package:job_apps/theme.dart';
import 'package:email_validator/email_validator.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;
  bool _isObscure = true;

  TextEditingController emailController = TextEditingController(text: '');
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 24, right: 24),
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    style: titleTextStyle,
                  ),
                  Text(
                    'Build Your Career',
                    style: subtitleTextStyle,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/work ilustrasi.png',
                            width: 262, height: 240)
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: titleTextStyle,
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        cursorColor: Colors.orange,
                        controller: emailController,
                        onChanged: (value) {
                          print(value);
                          bool isValid = EmailValidator.validate(value);
                          print(isValid);
                          if (isValid) {
                            setState(() {
                              isEmailValid = true;
                            });
                          } else {
                            setState(() {
                              isEmailValid = false;
                            });
                          }
                        },
                        decoration: InputDecoration(
                            fillColor: Color(0xffF1F0F5),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide:
                                    BorderSide.none //menunaktifkan border
                                ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                  color: isEmailValid
                                      ? Color(0xffFFA801)
                                      : Color(
                                          0xffFD4F56)), //menunaktifkan border
                            ),
                            hintText: '  Masukan Email',
                            hintStyle: hintTextStyle),
                        style: TextStyle(
                          color: isEmailValid
                              ? Color(0xffFFA801)
                              : Color(0xffFD4F56),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: titleTextStyle,
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        cursorColor: Colors.orange,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: _isObscure
                                      ? Color(0xffFFA801)
                                      : Color(0xffB3B5C4)),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                            fillColor: Color(0xffF1F0F5),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide:
                                    BorderSide.none //menunaktifkan border
                                ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: isEmailValid
                                    ? Color(0xffFFA801)
                                    : Color(0xffFD4F56),
                              ), //menunaktifkan border
                            ),
                            hintText: '  Masukan Password',
                            hintStyle: hintTextStyle),
                        style: TextStyle(
                            color: isEmailValid
                                ? Color(0xffFFA801)
                                : Color(0xffFD4F56)),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Container(
                      width: 340,
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xffFFA801),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            )),
                        onPressed: () {},
                        child: Text(
                          'Sign In',
                          style: buttonTextStyle,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPages(),
                            ),
                          );
                        },
                        child: Text('Create New Account', style: subTextStyle),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
