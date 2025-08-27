import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter_food_ordering_app/components/text_input.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                        SizedBox(height: 10),
                        Center(
                          child: Image.asset('assets/images/register-img.png',
                              height: Platform.isIOS ? 180 : 300),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text('Create a New Account',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 27)),
                        ),
                        SizedBox(height: 15),
                        TextInput(
                            hintText: "Email",
                            icon: Icon(Icons.email,
                                size: 26, color: Color(0XFF8D8D8D))),
                        SizedBox(height: Platform.isAndroid ? 20 : 10),
                        TextInput(
                            hintText: "Email",
                            icon: Icon(Icons.email,
                                size: 26, color: Color(0XFF8D8D8D))),
                        SizedBox(height: Platform.isAndroid ? 20 : 10),
                        TextInput(
                            hintText: "Full Name",
                            icon: Icon(Icons.email,
                                size: 26, color: Color(0XFF8D8D8D))),
                        SizedBox(height: Platform.isIOS ? 2 : 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: true,
                              shape: const CircleBorder(),
                              checkColor: Colors.white,
                              fillColor: WidgetStateProperty.resolveWith<Color>(
                                (states) {
                                  if (states.contains(WidgetState.selected)) {
                                    return const Color(0XFF1E1E1E);
                                  }
                                  return Colors
                                      .transparent; // background when unchecked
                                },
                              ),
                              side: WidgetStateBorderSide.resolveWith(
                                (states) => const BorderSide(
                                  width: 2,
                                  color: Color(0XFF02C543), // always red border
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            Text('Remember be',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                        SizedBox(height: Platform.isIOS ? 5 : 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                                height: 52,
                                child: FilledButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/dashboard');
                                    },
                                    style: FilledButton.styleFrom(
                                        backgroundColor: Color(0XFF02C543)),
                                    child: Text(
                                      "Sign Up",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ))),
                          ],
                        )
                      ]),
                  Column(
                    children: [
                      SizedBox(height: Platform.isAndroid ? 30 : 20),
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
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: Platform.isAndroid ? 60 : 48,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                    backgroundColor: Color(0XFF01040F)),
                                child: Image.asset(
                                    'assets/images/facebook-logo.png',
                                    width: 25,
                                    height: 25),
                              )),
                          SizedBox(width: 15),
                          SizedBox(
                              height: Platform.isAndroid ? 60 : 48,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                    backgroundColor: Color(0XFF01040F)),
                                child: Image.asset(
                                    'assets/images/google-logo.png',
                                    width: 25,
                                    height: 25),
                              )),
                          SizedBox(width: 15),
                          SizedBox(
                              height: Platform.isAndroid ? 60 : 48,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                    backgroundColor: Color(0XFF01040F)),
                                child: Image.asset(
                                    'assets/images/apple-logo.png',
                                    width: 25,
                                    height: 25),
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ))),
    );
  }
}
