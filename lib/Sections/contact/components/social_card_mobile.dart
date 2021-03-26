import "package:flutter/material.dart";
import "package:webportfolio/constants.dart";

class SocialCardMobile extends StatefulWidget {
  const SocialCardMobile(
      {Key key, this.color, this.iconSrc, this.name, this.press})
      : super(key: key);
  final String iconSrc, name;
  final Color color;
  final Function press;

  @override
  _SocialCardMobileState createState() => _SocialCardMobileState();
}

class _SocialCardMobileState extends State<SocialCardMobile> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.0),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.iconSrc,
                height: 30,
                width: 30,
              ),
              SizedBox(width: kDefaultPadding),
              Text(widget.name),
            ],
          ),
        ),
      ),
    );
  }
}
