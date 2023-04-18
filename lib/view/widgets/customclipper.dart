import 'package:flutter/cupertino.dart';

class CustomClipperPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path=Path();
    double w=size.width;
    double h=size.height;
    path.lineTo(0, h);
    path.quadraticBezierTo(w*0.35, h-100, w, h-75);
    path.lineTo(w, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {

    return false;
  }
}