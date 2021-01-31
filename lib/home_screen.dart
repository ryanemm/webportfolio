import "package:flutter/material.dart";
import 'package:webportfolio/Sections/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
          ],
        ),
      ),
    );
  }
}
