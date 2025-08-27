import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  late final PageController _pageViewController;
  Timer? _timer;

  static const List<Map<String, String>> carousels = [
    {
      "title": "Order for Food",
      "img": "assets/images/carousel-one.png",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    },
    {
      "title": "Easy Payment",
      "img": "assets/images/carousel-two.png",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
    },
    {
      "title": "Fast Delivery",
      "img": "assets/images/carousel-three.png",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
    }
  ];

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      int nextPage = _pageViewController.page!.toInt() + 1;

      if (nextPage >= carousels.length) {
        nextPage = 0; // loop back to first page
      }

      _pageViewController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF1E1E1E),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [
                      SizedBox(
                          height: 500,
                          child: PageView(
                              controller: _pageViewController,
                              children: carousels.map((item) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      item['img']!,
                                      width: 320,
                                      height: 275,
                                    ),
                                    SizedBox(height: 30),
                                    Center(
                                      child: Text(
                                        item['title']!,
                                        style: GoogleFonts.poppins(
                                            fontSize: 30,
                                            color: Color(0XFF02C543),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 18),
                                        child: Center(
                                            child: Text(item['description']!,
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w400)))),
                                  ],
                                );
                              }).toList())),
                      SizedBox(height: Platform.isIOS ? 5 : 10),
                      SmoothPageIndicator(
                        controller: _pageViewController,
                        count: carousels.length,
                        effect: ExpandingDotsEffect(
                            activeDotColor: Color(0XFF02C543),
                            dotColor: Color(0XFFD0D0D0),
                            dotWidth: 6,
                            dotHeight: 6),
                      )
                    ]),
                    Container(
                      margin: EdgeInsets.only(top: 155),
                      padding: EdgeInsets.symmetric(horizontal: 19),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: 50,
                              child: FilledButton(
                                  style: FilledButton.styleFrom(
                                      backgroundColor: Color(0XFF02C543)),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/login");
                                  },
                                  child: Text('Next',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600))),
                            )
                          ]),
                    ),
                  ],
                ))));
  }
}
