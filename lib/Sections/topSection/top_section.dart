import 'dart:ui';
import "package:webportfolio/Sections/topSection/glass_content.dart";
import "package:flutter/material.dart";
import "package:webportfolio/constants.dart";
import "package:webportfolio/Sections/topSection/logo_blur_box.dart";
import "package:webportfolio/Sections/topSection/menu.dart";

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.center,
        constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
        width: double.infinity,
        //height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/background.jpg"),
          ),
        ),
        child: Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            width: 1200,
            child: Stack(
              children: [
                LogoAndBlurBox(size: size),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 639, maxHeight: 860),
                      child: Image.asset("assets/images/person.png"),
                    )),
                Positioned(
                  bottom: 0,
                  child: Menu(),
                )
              ],
            )));
  }
}
