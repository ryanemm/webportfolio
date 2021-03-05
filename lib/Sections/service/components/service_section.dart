import "package:flutter/material.dart";
import 'package:webportfolio/constants.dart';
import "package:webportfolio/Sections/service/components/section_title.dart";
import "package:webportfolio/models/service.dart";
import "package:webportfolio/Sections/service/components/service_card.dart";

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
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
    );
  }
}
