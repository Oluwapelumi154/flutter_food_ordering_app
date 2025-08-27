import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchInput extends StatelessWidget {
  final String hintText;
  final Widget icon;
  const SearchInput({required this.hintText, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: TextStyle(
            // <-- this controls the input value color
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
              prefixIcon: icon,
              hintText: hintText,
              fillColor: Color(0XFF0E162C),
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0XFF1E1E1E), width: 0.8)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0XFF1E1E1E), width: 0.8)),
              hintStyle: GoogleFonts.poppins(
                  color: Color(0XFF8D8D8D),
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
        )
      ],
    );
  }
}
