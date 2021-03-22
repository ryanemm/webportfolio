import "package:flutter/material.dart";
import 'package:webportfolio/Sections/About/Components/my_outline_button.dart';
import 'package:webportfolio/Sections/service/components/section_title.dart';
import 'package:webportfolio/constants.dart';
import "package:webportfolio/Sections/contact/components/social_card.dart";

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subtitle: "For project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/whatsapp.png",
                name: "WhatsApp",
                press: () {},
              ),
              SocialCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/twitter.png",
                name: "Twitter",
                press: () {},
              ),
              SocialCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/linkedin.png",
                name: "Linked In",
                press: () {},
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Your Name", hintText: "Enter Your Name"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Email Address",
                  hintText: "Enter your email address"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select Project Type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Project Budget",
                  hintText: "Select Project Budget"),
            ),
          ),
          SizedBox(
            //height: 300,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Describe your project",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: MyOutlineButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
