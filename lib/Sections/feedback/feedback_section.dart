import 'package:flutter/material.dart';
import 'package:webportfolio/Sections/service/components/section_title.dart';
import 'package:webportfolio/constants.dart';
import 'package:webportfolio/models/feedback.dart';

import 'package:webportfolio/Sections/feedback/Components/feedback_card.dart';
import "package:webportfolio/components/hire_me.dart";

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding * 2.5,
        horizontal: _screenSize.width * 0.1,
      ),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          //HireMeCard(),
          SizedBox(height: 20),
          SectionTitle(
            title: "Feedback Received",
            ftSize: 55,
            subtitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(index: index, showDuration: index + 1),
            ),
          ),
        ],
      ),
    );
  }
}
