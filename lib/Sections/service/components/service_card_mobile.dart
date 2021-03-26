import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:webportfolio/constants.dart";
import "package:webportfolio/models/service.dart";
import "package:google_fonts/google_fonts.dart";

class ServiceCardMobile extends StatefulWidget {
  const ServiceCardMobile({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _ServiceCardMobileState createState() => _ServiceCardMobileState();
}

class _ServiceCardMobileState extends State<ServiceCardMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding * 1.5),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(0.1),
                ),
              ],
            ),
            child: Image.asset(
              services[widget.index].image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: kDefaultPadding * 1.5),
          Text(
            services[widget.index].title,
            style:
                GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
