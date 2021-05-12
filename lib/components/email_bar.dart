import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class EmailBar extends StatelessWidget {
  List<int> verticalData = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RotatedBox(
            quarterTurns: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "built by emersonryant@gmail.com",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Image.asset("assets/images/line.png", height: 70),
        ],
      ),
    );
  }
}
