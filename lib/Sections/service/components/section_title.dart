import "package:flutter/material.dart";
import "package:webportfolio/constants.dart";
import "package:google_fonts/google_fonts.dart";

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    this.title,
    this.color,
    this.subtitle,
    this.ftSize,
  }) : super(key: key);

  final String title, subtitle;
  final double ftSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            padding: EdgeInsets.only(bottom: 72),
            width: 8,
            height: 100,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(color: color),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                subtitle,
                style:
                    TextStyle(fontWeight: FontWeight.w200, color: kTextColor),
              ),
              Text(
                title,
                style: GoogleFonts.satisfy(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: ftSize),
              )
            ],
          )
        ],
      ),
    );
  }
}
