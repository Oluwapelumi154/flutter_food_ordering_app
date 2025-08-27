import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_food_ordering_app/screens/splash.dart';

class SplashTwo extends StatelessWidget {
  const SplashTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0XFF1E1E1E),
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/pizza-bg.png'))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Welcome to",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Color(0XFF02C543),
                        fontWeight: FontWeight.bold)),
                Text("Foodies!",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Color(0XFF02C543),
                        fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                      "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: SizedBox(
                    height: 50,
                    child: FilledButton.icon(
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          weight: 200,
                          size: 25,
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/carousel');
                        },
                        style: FilledButton.styleFrom(
                            foregroundColor: Colors.white,
                            iconColor: Colors.white,
                            iconSize: 40,
                            backgroundColor: Color(0XFF2B964F)),
                        label: RichText(
                            text: TextSpan(
                                text: "Get Started",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)))),
                  ),
                )
              ]),
        )));
  }
}
