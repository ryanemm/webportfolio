import "package:flutter/material.dart";
import 'package:webportfolio/Sections/About/Components/about_section.dart';
import 'package:webportfolio/Sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [TopSection(), AboutSection(), SizedBox(height: 500)],
        ),
      ),
    );
  }
}
