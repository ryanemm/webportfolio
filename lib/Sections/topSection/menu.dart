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
  List _isHovering = [false, false, false, false];
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
                color: Colors.black38,
                offset: const Offset(0, 10),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  _isHovering[0] = value;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    menuItems[0],
                    style: GoogleFonts.raleway(
                      color: _isHovering[0] ? Colors.blue : kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[0],
                    child: Container(
                      height: 2,
                      width: 50,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "|",
              style: GoogleFonts.raleway(
                color: kTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  _isHovering[1] = value;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    menuItems[2],
                    style: GoogleFonts.raleway(
                      color: _isHovering[1] ? Colors.blue : kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[1],
                    child: Container(
                      height: 2,
                      width: 50,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "|",
              style: GoogleFonts.raleway(
                color: kTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  _isHovering[2] = value;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    menuItems[4],
                    style: GoogleFonts.raleway(
                      color: _isHovering[2] ? Colors.blue : kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[2],
                    child: Container(
                      height: 2,
                      width: 50,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "|",
              style: GoogleFonts.raleway(
                color: kTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  _isHovering[3] = value;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    menuItems[6],
                    style: GoogleFonts.raleway(
                      color: _isHovering[3] ? Colors.blue : kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[3],
                    child: Container(
                      height: 2,
                      width: 50,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
        /*child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),*/
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
