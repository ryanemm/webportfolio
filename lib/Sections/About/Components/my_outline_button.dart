import "package:flutter/material.dart";

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({Key key, this.imageSrc, this.press, this.text})
      : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton.icon(
        label: Text(text),
        //style: ButtonStyle(shape: ) ,
        onPressed: press,
        icon: Image.asset(imageSrc, height: 40),
      ),
    );
  }
}
