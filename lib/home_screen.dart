import "package:flutter/material.dart";
import 'package:webportfolio/Sections/About/Components/about_section.dart';
import 'package:webportfolio/Sections/topSection/top_section.dart';
import 'package:webportfolio/constants.dart';
import "package:webportfolio/Sections/service/components/service_section.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            SizedBox(height: 500)
          ],
        ),
      ),
    );
  }
}
