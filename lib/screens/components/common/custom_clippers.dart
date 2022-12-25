import 'package:flutter/material.dart';

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    var path = Path();

    path.lineTo(0, height);
    path.cubicTo(
        width * .40, height * 1, width * .7, height * .9, width, height - 70);
    path.lineTo(width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class BodyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    var path = Path();

    path.lineTo(0, height);
    path.cubicTo(
        width * .30, height * 1.1, width * .6, height * 1, width, height - 50);
    path.lineTo(width, 0);
    path.cubicTo(width * .4, height * .04, width * .4, height * .2, 0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
