import 'package:flutter/material.dart';
import 'package:webportfolio/constants.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Contact",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1100),
      height: 100,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          constraints: BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: TextStyle(fontSize: 18, color: kTextColor),
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
