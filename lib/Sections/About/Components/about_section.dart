import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:webportfolio/constants.dart';
import "package:webportfolio/Sections/About/Components/about_text_with_sign.dart";
import "package:webportfolio/Sections/About/Components/experience_card.dart";
import "package:webportfolio/Sections/About/Components/about_section_text.dart";
import "package:webportfolio/Sections/About/Components/my_outline_button.dart";

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    Widget child;

    if (isLandscape) {
      child = Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AboutTextWithSign(),
                Expanded(
                  child: AboutSectionText(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur dgsdf elit, sed fo eiusmod tempor inciduntut ut wingardium leviosa expecto patronum. Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto. Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto  "),
                ),
                ExperienceCard(
                  numOfExp: "10",
                ),
                Expanded(
                  child: AboutSectionText(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur dgsdf elit, sed fo eiusmod tempor inciduntut ut wingardium leviosa expecto patronum. Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto, Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto  "),
                )
              ],
            ),
            SizedBox(height: kDefaultPadding * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyOutlineButton(
                  imageSrc: "assets/images/hand.png",
                  text: "Hire me",
                  press: () {},
                ),
                SizedBox(width: kDefaultPadding * 2),
                MyOutlineButton(
                  imageSrc: "assets/images/download.png",
                  text: "Download CV",
                  press: () {},
                )
              ],
            ),
          ],
        ),
      );
    } else {
      child = Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AboutTextWithSign(),
                  Expanded(
                    child: AboutSectionText(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur dgsdf elit, sed fo eiusmod tempor inciduntut ut wingardium leviosa expecto patronum. Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto. Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto  "),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: AboutSectionText(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur dgsdf elit, sed fo eiusmod tempor inciduntut ut wingardium leviosa expecto patronum. Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto, Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto  "),
                  ),
                  ExperienceCard(
                    numOfExp: "10",
                  )
                ],
              )
            ],
          ));
    }

    return Container(
      //constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: child,
    );
  }
}
