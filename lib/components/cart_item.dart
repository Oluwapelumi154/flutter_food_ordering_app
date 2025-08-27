import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.currency(
      locale: 'en_US', // US locale
      symbol: '\$', // Currency symbol
    );

    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          shape: BoxShape.rectangle,
          color: Color(0XFF01040F)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/chicken-yes.png',
            height: 250,
            fit: BoxFit.fitHeight,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prawn mix salad",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        Text('Sea Food',
                            style: GoogleFonts.poppins(
                                fontSize: 13, color: Color(0XFF999595)))
                      ],
                    ),
                    Image.asset('assets/images/delete.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      formatCurrency.format(5.98),
                      style: GoogleFonts.poppins(
                          color: Color(0XFF02C543),
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                minimumSize: Size(0, 0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(color: Colors.white)),
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        Text("2",
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          width: 12,
                        ),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                minimumSize: Size(0, 0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(color: Colors.white))),
                            child: Icon(Icons.add, color: Colors.white))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
