import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import "package:webportfolio/Sections/topSection/glass_content.dart";
import "package:flutter/material.dart";
import "package:webportfolio/constants.dart";
import "package:webportfolio/Sections/topSection/logo_blur_box.dart";
import "package:webportfolio/Sections/topSection/menu.dart";
import "package:delayed_display/delayed_display.dart";

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxHeight: size.height * 0.5,
              minHeight: size.height * 0.4,
            ),
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 25),
            //height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/desk_1.jpg"),
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.1,
            top: size.width * 0.125,
            child: DelayedDisplay(
              delay: Duration(seconds: 5),
              fadeIn: true,
              child: Text(
                "Hi I'm Melissa",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 50,
                  //height: 2,
                ),
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.15,
            right: size.width * 0.15,
            bottom: 0,
            child: Menu(),
          ),
        ],
      ),
    );
  }
}
