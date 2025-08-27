import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToCarousel();
  }

  Future<void> _navigateToCarousel() async {
    await Future.delayed(const Duration(seconds: 3));

    // check if still mounted before using context
    if (!mounted) return;

    Navigator.pushReplacementNamed(context, '/main');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 40, bottom: 80),
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(children: [
                Center(child: Image.asset("assets/images/splash-img.png")),
                RichText(
                    text: TextSpan(
                        text: "Food",
                        style: GoogleFonts.itim(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: 'ies',
                          style: GoogleFonts.itim(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF2B964F)))
                    ])),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 200),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SpinKitFadingCircle(
                      size: 45.0, color: Color(0XFF02C543))),
            ),
          ],
        )));
  }
}
