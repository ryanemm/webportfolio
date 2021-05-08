import "package:flutter/material.dart";
import 'package:webportfolio/Sections/service/components/service_card_mobile.dart';
import 'package:webportfolio/constants.dart';
import "package:webportfolio/Sections/service/components/section_title.dart";
import "package:webportfolio/models/service.dart";
import "package:webportfolio/Sections/service/components/service_card.dart";
import "package:webportfolio/components/hire_me.dart";

class ServiceSection extends StatefulWidget {
  @override
  _ServiceSectionState createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    Widget child;

    if (isLandscape) {
      child = Container(
        color: Colors.grey[50],
        width: size.width * 1.0,
        child: Stack(
          children: [
            Container(
              color: Color(0xFFFFF3DD),
              padding: EdgeInsets.only(
                  bottom: 70, right: size.width * 0.1, left: size.width * 0.1),
              margin: EdgeInsets.only(bottom: 70),
              //constraints: BoxConstraints(maxWidth: 1110),
              //color: Color(0xFFFFF3DD),
              child: Container(
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
            ),
            Positioned(
                bottom: 0,
                left: size.width * 0.1,
                right: size.width * 0.1,
                child: HireMeCard())
          ],
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
