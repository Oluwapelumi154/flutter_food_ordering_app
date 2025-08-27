import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TextData extends StatelessWidget {
  final String label;
  final String price;
  const TextData({required this.label, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.currency(
      locale: 'en_US', // US locale
      symbol: '\$', // Currency symbol
    );
    double priceValue = double.tryParse(price) ?? 0.0;

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Text(formatCurrency.format(priceValue),
              style: GoogleFonts.poppins(
                  color: Color(0XFF02C543),
                  fontSize: 17,
                  fontWeight: FontWeight.w500))
        ]);
  }
}
