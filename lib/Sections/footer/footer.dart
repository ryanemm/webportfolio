import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      //margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      color: Colors.grey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "COPYRIGHT © 2021 ELLIE WRITES - ALL RIGHTS RESERVED",
            style: GoogleFonts.raleway(
                fontWeight: FontWeight.w300,
                color: Colors.grey[300],
                fontSize: 16),
          ),
          RichText(
            text: TextSpan(
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[300],
                  fontSize: 16),
              children: [
                TextSpan(text: "POWERED BY"),
                TextSpan(
                  text: " ANAKIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[200]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
