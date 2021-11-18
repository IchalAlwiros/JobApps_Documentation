import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:job_apps/pages/home_page.dart';
import 'package:job_apps/pages/signin_page.dart';
import 'package:job_apps/theme.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isMailValid = true;
  bool isUpload = false;
  bool _isObscure = true;

  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget uploadedImage() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUpload = !isUpload;
            });
          },
          child: Column(children: [
            Image.asset('assets/upload_pic.png', width: 120, height: 120),
          ]),
        ),
      );
    }

    Widget showImage() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUpload = !isUpload;
            });
          },
          child: Column(
            children: [
              Image.asset('assets/Pas_Foto.png', width: 120, height: 120),
            ],
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: titleTextStyle,
                ),
                Text(
                  'Begin New Journey',
                  style: subtitleTextStyle,
                ),
                SizedBox(
                  height: 50,
                ),
                // Center(
                //   child: Column(
                //     children: [
                //       Image.asset('assets/upload_pic.png',
                //           width: 120, height: 120),
                //     ],
                //   ),
                // ),
                isUpload ? showImage() : uploadedImage(),

                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
                      style: titleTextStyle,
                    ),
                    TextFormField(
                      cursorColor: Colors.orange,
                      decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: isMailValid
                                  ? Color(0xffFFA801)
                                  : Color(0xffFD4F56),
                            ),
                          ),
                          hintText: '  Masukan Nama',
                          hintStyle: hintTextStyle),
                      style: TextStyle(
                        color:
                            isMailValid ? Color(0xffFFA801) : Color(0xffFD4F56),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Email Address',
                      style: titleTextStyle,
                    ),
                    TextFormField(
                      cursorColor: Colors.orange,
                      controller: emailController,
                      onChanged: (value) {
                        print(value);
                        bool isValid = EmailValidator.validate(value);
                        print(isValid);
                        if (isValid) {
                          setState(() {
                            isMailValid = true;
                          });
                        } else {
                          setState(() {
                            isMailValid = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: isMailValid
                                  ? Color(0xffFFA801)
                                  : Color(0xffFD4F56),
                            ),
                          ),
                          hintText: '  Masukan Email',
                          hintStyle: hintTextStyle),
                      style: TextStyle(
                        color:
                            isMailValid ? Color(0xffFFA801) : Color(0xffFD4F56),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Password', style: titleTextStyle),
                    TextFormField(
                      obscureText: _isObscure,
                      cursorColor: Colors.orange,
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
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: isMailValid
                                  ? Color(0xffFFA801)
                                  : Color(0xffFD4F56),
                            ),
                          ),
                          hintText: '  Masukan Password',
                          hintStyle: hintTextStyle),
                      style: TextStyle(
                        color:
                            isMailValid ? Color(0xffFFA801) : Color(0xffFD4F56),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Your Goal', style: titleTextStyle),
                    TextFormField(
                      cursorColor: Colors.orange,
                      decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                                color: isMailValid
                                    ? Color(0xffFFA801)
                                    : Color(0xffFD4F56)),
                          ),
                          hintText: '  Masukan Your Goal',
                          hintStyle: hintTextStyle),
                      style: TextStyle(
                          color: isMailValid
                              ? Color(0xffFFA801)
                              : Color(0xffFD4F56)),
                    )
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
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
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
                                builder: (context) => SignInPage()));
                      },
                      child: Text('Back to Sign In', style: subTextStyle),
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
