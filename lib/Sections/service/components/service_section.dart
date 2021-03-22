import "package:flutter/material.dart";
import 'package:webportfolio/constants.dart';
import "package:webportfolio/Sections/service/components/section_title.dart";
import "package:webportfolio/models/service.dart";
import "package:webportfolio/Sections/service/components/service_card.dart";

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
                color: Color(0xFFFF0000),
                title: "Service Offerings",
                subtitle: "My Strong Areas"),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    services.length,
                    (index) => ServiceCard(
                          index: index,
                        ))),
          ],
        ),
      ),
    );
  }
}
