import 'package:flutter/material.dart';
import 'package:webportfolio/constants.dart';
import "package:google_fonts/google_fonts.dart";

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "About",
    "|",
    "Services",
    "|",
    "Portfolio",
    "|",
    "Contact",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      constraints: BoxConstraints(minWidth: size.width * 0.5),
      height: size.height * 0.08,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: const Offset(3.0, 3.0),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectIndex;
          });
        },
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: GoogleFonts.raleway(
                  color: kTextColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              //hover
              /*AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom:
                      selectIndex != index && hoverIndex == index ? -20 : -32,
                  child: Image.asset("assets/images/hover.png")),

              // select
              AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom: selectIndex == index ? -2 : -32,
                  child: Image.asset("assets/images/hover.png"))*/
            ],
          ),
        ),
      );
}
