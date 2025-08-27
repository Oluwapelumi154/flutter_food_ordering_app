import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_food_ordering_app/components/cart_item.dart';
import 'package:flutter_food_ordering_app/components/text_description.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1E1E1E),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        minimumSize: Size(0, 0)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 18,
                    )),
                Text('My Cart',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                        color: Colors.white)),
                Image.asset(
                  'assets/images/menu.png',
                  width: 40,
                )
              ],
            ),
            SizedBox(
              height: Platform.isIOS ? 440 : 550, // fixed height
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 5),
                children: const [
                  CartItem(),
                  CartItem(),
                  CartItem(),
                  CartItem(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                TextData(label: "Delivery Fee", price: "59.0"),
                const SizedBox(
                  height: 15,
                ),
                TextData(label: "Total", price: "59.0"),
                const SizedBox(
                  height: 15,
                ),
                TextData(label: "Discounts", price: "59.0"),
                SizedBox(
                  height: 15,
                ),
                TextData(label: "Card", price: "59.0")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                    height: 50,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: Color(0XFF2B964F),
                            foregroundColor: Colors.white),
                        onPressed: () {},
                        child: Text(
                          "Checkout",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ))),
              ],
            )
          ],
        ),
      )),
    );
  }
}
