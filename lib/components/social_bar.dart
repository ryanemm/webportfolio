import "package:flutter/material.dart";

class SocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset("assets/images/github.png", height: 50),
          SizedBox(height: 12),
          Image.asset("assets/images/instagram.png", height: 50),
          SizedBox(height: 12),
          Image.asset("assets/images/twitter_1.png", height: 50),
          SizedBox(height: 12),
          Image.asset("assets/images/linkedin_1.png", height: 50),
          SizedBox(height: 5),
          Image.asset("assets/images/line.png", height: 70)
        ],
      ),
    );
  }
}
