import "package:flutter/material.dart";
import 'package:webportfolio/Sections/service/components/service_card_mobile.dart';
import 'package:webportfolio/constants.dart';
import "package:webportfolio/Sections/service/components/section_title.dart";
import "package:webportfolio/models/service.dart";
import "package:webportfolio/Sections/service/components/service_card.dart";

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    Widget child;

    if (isLandscape) {
      child = Container(
        color: Color(0xFFFFF3DD),
        width: size.width * 1.0,
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: kDefaultPadding, horizontal: size.width * 0.1),
          constraints: BoxConstraints(maxWidth: 1110),
          color: Color(0xFFFFF3DD),
          child: Column(
            children: [
              SectionTitle(
                color: Color(0xFF00B1FF),
                title: "Service Offerings",
                subtitle: "My Strong Areas",
                ftSize: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  services.length,
                  (index) => ServiceCard(
                    index: index,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      child = Container(
        color: Color(0xFFFFF3DD),
        width: size.width * 1,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          color: Color(0xFFFFF3DD),
          child: Column(
            children: [
              SectionTitle(
                color: Color(0xFF00B1FF),
                title: "Service Offerings",
                subtitle: "My strong areas",
                ftSize: 30,
              ),
              Column(
                children: List.generate(
                  services.length,
                  (index) => ServiceCardMobile(index: index),
                ),
              )
            ],
          ),
        ),
      );
    }
    return child;
  }
}
