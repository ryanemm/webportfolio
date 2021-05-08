import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:webportfolio/Sections/About/Components/about_section.dart';
import 'package:webportfolio/Sections/topSection/redesigned_top.dart';
import 'package:webportfolio/Sections/topSection/top_section.dart';
import 'package:webportfolio/constants.dart';
import "package:webportfolio/Sections/service/components/service_section.dart";
import "package:google_fonts/google_fonts.dart";
import "package:webportfolio/Sections/contact/contact_section.dart";
import "package:webportfolio/Sections/footer/footer.dart";
import "package:webportfolio/Sections/topSection/menu.dart" as menu;
import "package:webportfolio/Sections/feedback/feedback_section.dart";
import "package:lazy_load_scrollview/lazy_load_scrollview.dart";

class HomeScreen extends StatelessWidget {
  GlobalKey dataKeyo = GlobalKey();
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      //extendBodyBehindAppBar: true,
      /*appBar: PreferredSize(
        preferredSize: Size(
          screenSize.width,
          screenSize.height * 0.15,
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.grey[700].withOpacity(0.6),
                Colors.grey[400].withOpacity(0.25),
                Colors.grey[200].withOpacity(0.2),
                Colors.white.withOpacity(0.1),
              ],
              stops: [0.1, 0.5, 0.7, 0.8, 0.9],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "About",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 50,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),*/
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 1.25),
            AboutSection(),
            ServiceSection(),
            //RecentWorkSection(),
            FeedbackSection(),
            ContactSection(),
            Footer(),
            //SizedBox(height: 500)
          ],
        ),
      ),
    );
  }
}

/*appBar: PreferredSize(
        preferredSize: Size(
          screenSize.width,
          screenSize.height * 0.1,
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.grey[700].withOpacity(0.6),
                Colors.grey[400].withOpacity(0.25),
                Colors.white.withOpacity(0.1),
              ],
              stops: [0.1, 0.6, 0.8, 0.9],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "About",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 80,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 50,
                ),
              ],
            ),
          ),
        ),
      ),*/
