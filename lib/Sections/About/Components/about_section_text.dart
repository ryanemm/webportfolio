import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:webportfolio/constants.dart";

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: GoogleFonts.raleway(
            fontWeight: FontWeight.w400, color: Colors.black87, height: 2)
        /*style: TextStyle(
            fontWeight: FontWeight.w200, color: kTextColor, height: 2)*/
        ,
      ),
    );
  }
}
