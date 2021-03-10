import "package:flutter/material.dart";
import 'package:webportfolio/Sections/About/Components/about_section.dart';
import 'package:webportfolio/Sections/topSection/top_section.dart';
import 'package:webportfolio/constants.dart';
import "package:webportfolio/Sections/service/components/service_section.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png", height: 50),
        backgroundColor: Colors.white,
        elevation: 20,
        actions: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "About",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Services",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
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

/* TextButton(
            onPressed: () {},
            //style: ButtonStyle(backgroundColor:),
            child: Text(
              "Home",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 2),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "About",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 2),
            ),
          ),
          TextButton(
            onPressed: () {},
            //style: ButtonStyle(backgroundColor:),
            child: Text(
              "Services",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 2),
            ),
          ),
          TextButton(
            onPressed: () {},
            //style: ButtonStyle(backgroundColor:),
            child: Text(
              "Portfolio",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 2),
            ),
          ),
          TextButton(
            onPressed: () {},
            //style: ButtonStyle(backgroundColor:),
            child: Text(
              "Testimonial",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 2),
            ),
          ),
          TextButton(
            onPressed: () {},
            //style: ButtonStyle(backgroundColor:),
            child: Text(
              "Contact",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 2),
            ),
          ),
          */
