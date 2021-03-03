import "package:flutter/material.dart";
import 'package:webportfolio/constants.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
              constraints: BoxConstraints(maxWidth: 1110),
              height: 100,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: kDefaultPadding),
                    padding: EdgeInsets.only(bottom: 72),
                    width: 8,
                    height: 100,
                    color: Colors.black,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Color(0xFFFF0000)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "My Strong Arenas",
                        style: TextStyle(
                            fontWeight: FontWeight.w200, color: kTextColor),
                      ),
                      Text(
                        "Service Offerings",
                        style: Theme.of(context).textTheme.headline2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
