import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:webportfolio/Sections/About/Components/about_section.dart';
import 'package:webportfolio/Sections/topSection/redesigned_top.dart';
import 'package:webportfolio/Sections/topSection/top_section.dart';
import 'package:webportfolio/components/email_bar.dart';
import 'package:webportfolio/constants.dart';
import "package:webportfolio/Sections/service/components/service_section.dart";
import "package:google_fonts/google_fonts.dart";
import "package:webportfolio/Sections/contact/contact_section.dart";
import "package:webportfolio/Sections/footer/footer.dart";
import "package:webportfolio/Sections/topSection/menu.dart" as menu;
import "package:webportfolio/Sections/feedback/feedback_section.dart";
import "package:lazy_load_scrollview/lazy_load_scrollview.dart";
import "package:webportfolio/components/social_bar.dart";
import "package:webportfolio/components/app_bar.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey dataKeyo = GlobalKey();
  List<Widget> sectionsBank = [
    TopSection(),
    SizedBox(height: kDefaultPadding * 1.25),
    AboutSection(),
    ServiceSection(),
    //RecentWorkSection(),
    FeedbackSection(),
    ContactSection(),
    Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      /*appBar: PreferredSize(
        preferredSize: Size(
          screenSize.width,
          screenSize.height * 0.15,
        ),
        child: CustomAppBar(),
      ),*/
      body: buildList(),
    );
  }

  Widget buildList() {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return sectionsBank.elementAt(index);
      },
    );
  }
}

/*Stack(
        children: [
          LazyLoadScrollView(
            scrollOffset: 5,
            onEndOfPage: () => loadNextWidget(),
            child: ListView.builder(
              //scrollDirection: Axis.vertical,
              //itemCount: sections.length,
              itemBuilder: (context, position) {
                return sections.elementAt(position);
              },
            ),
          ),
          /*Positioned(
            bottom: 0,
            left: 30,
            child: SocialBar(),
          ),
          Positioned(
            bottom: 0,
            right: 30,
            child: EmailBar(),
          )*/
        ],
      ),*/
