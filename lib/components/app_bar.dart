import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.9),
            Colors.grey[700].withOpacity(0.6),
            Colors.grey[400].withOpacity(0.25),
            Colors.grey[200].withOpacity(0.2),
            Colors.white.withOpacity(0.1),
          ],
          stops: [0.1, 0.5, 0.7, 0.8, 0.9],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "About",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 50,
                )
              ],
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Sign up",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
