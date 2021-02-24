import 'dart:ui';
import "package:flutter/material.dart";
import "package:webportfolio/constants.dart";

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            constraints:
                BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
            width: double.infinity,
            color: Colors.white.withOpacity(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello There!",
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white,
                        )),
                Text("Ryan \nEmerson",
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.5)),
                Text("Software Developer",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white))
              ],
            )),
      ),
    );
  }
}