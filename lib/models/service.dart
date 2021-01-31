import "package:flutter/material.dart";

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({this.color, this.id, this.image, this.title});
}

//demo list services offered
List<Service> services = [
  Service(
    id: 1,
    title: "Web Design",
    image: "assets/images/web_design.jpg",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Web Development",
    image: "assets/images/web_development.jpg",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Mobile App Development",
    image: "assets/images/mobile_dev.jpg",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "Data Analysis",
    image: "assets/images/data_analysis.jpg",
    color: Color(0xFFFFE0E0),
  ),
];
