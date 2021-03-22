import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:webportfolio/constants.dart";

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About \nmy story",
          style: GoogleFonts.satisfy(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 65),
          /*style: Theme.of(context)
              .textTheme
              .headline2
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black)*/
        ),
        SizedBox(height: kDefaultPadding * 2),
        Image.asset("assets/images/sign.png"),
      ],
    );
  }
}
