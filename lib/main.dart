import 'package:flutter/material.dart';
import 'package:flutter_food_ordering_app/screens/carousel-two.dart';
import 'package:flutter_food_ordering_app/screens/cart.dart';
import 'package:flutter_food_ordering_app/screens/dashboard.dart';
import 'package:flutter_food_ordering_app/screens/login.dart';
import 'package:flutter_food_ordering_app/screens/register.dart';
import 'package:flutter_food_ordering_app/screens/splash.dart';
import 'package:flutter_food_ordering_app/screens/welcome.dart';

void main() {
  runApp(MaterialApp(
      home: Home(),
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.white,
          selectionColor: Colors.green,
          selectionHandleColor: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/carousel': (ctx) => CarouselPage(),
        '/main': (ctx) => SplashTwo(),
        '/register': (ctx) => Register(),
        '/login': (ctx) => Login(),
        '/dashboard': (ctx) => Dashboard(),
        '/cart': (ctx) => Cart()
      }));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0XFF1E1E1E),
      ),
      backgroundColor: Color(0XFF1E1E1E),
      body: Splash(),
    );
  }
}
