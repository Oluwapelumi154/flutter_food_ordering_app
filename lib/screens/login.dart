import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1E1E1E),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(0, 0),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Platform.isIOS ? 20 : 40),
                        Center(
                          child: Image.asset('assets/images/register-img.png',
                              height: Platform.isIOS ? 210 : 270),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text('Let\'s you In',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                        ),
                        SizedBox(height: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: 53,
                              child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Image.asset(
                                      'assets/images/facebook-logo.png',
                                      width: 25,
                                      height: 25),
                                  style: TextButton.styleFrom(
                                      backgroundColor: Color(0XFF01040F),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                  label: Text(
                                    "Continue with Facebook",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            SizedBox(
                              height: 52,
                              child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Image.asset(
                                      'assets/images/google-logo.png',
                                      width: 25,
                                      height: 25),
                                  style: TextButton.styleFrom(
                                      backgroundColor: Color(0XFF01040F),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                  label: Text(
                                    "Continue with Google",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            SizedBox(
                              height: 52,
                              child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.apple,
                                      size: 30, color: Colors.white),
                                  style: TextButton.styleFrom(
                                      backgroundColor: Color(0XFF01040F),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                  label: Text(
                                    "Continue with Apple",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                            )
                          ],
                        )
                      ]),
                  Column(
                    children: [
                      SizedBox(height: 22),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                                  thickness: 0.9, color: Color(0XFF646464))),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('Or',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Expanded(
                              child: Divider(
                                  thickness: 0.9, color: Color(0XFF646464)))
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                              height: 52,
                              child: FilledButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/register");
                                  },
                                  style: FilledButton.styleFrom(
                                      backgroundColor: Color(0XFF02C543)),
                                  child: Text(
                                    "Sign in with Contact Number",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ))),
                        ],
                      ),
                      SizedBox(height: 25),
                      Column(
                        children: [
                          Center(
                              child: RichText(
                                  text: TextSpan(
                                      text: "Create a new account > ",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      children: [
                                TextSpan(
                                    text: "Sign up",
                                    style: GoogleFonts.poppins(
                                        color: Color(0XFF02C543),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))
                              ]))),
                        ],
                      )
                    ],
                  ),
                ],
              ))),
    );
  }
}
