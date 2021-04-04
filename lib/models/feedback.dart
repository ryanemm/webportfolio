import "package:flutter/material.dart";

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

//list of demo feedback
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Ronald Thompson",
    review:
        "Lorem ipsum dolor sit amet, consectetur dgsdf elit, sed fo eiusmod tempor inciduntut ut wingardium leviosa expecto patronum. Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto.",
    userPic: "assets/images/people.jpg",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 1,
    name: "Ronald Thompson",
    review:
        "Lorem ipsum dolor sit amet, consectetur dgsdf elit, sed fo eiusmod tempor inciduntut ut wingardium leviosa expecto patronum. Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto.",
    userPic: "assets/images/people.jpg",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 1,
    name: "Ronald Thompson",
    review:
        "Lorem ipsum dolor sit amet, consectetur dgsdf elit, sed fo eiusmod tempor inciduntut ut wingardium leviosa expecto patronum. Thsh skkdf crotore por lae vincitor sdgfj fritres undur parcur magnofacto.",
    userPic: "assets/images/people.jpg",
    color: Color(0xFFFFF3DD),
  ),
];
