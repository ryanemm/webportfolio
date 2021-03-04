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
    image: "assets/images/web_design.png",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Graphic Design",
    image: "assets/images/graphic_design.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "UI Design",
    image: "assets/images/ui_design.png",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "Code Optimisation",
    image: "assets/images/code_editing.png",
    color: Color(0xFFFFE0E0),
  ),
];
