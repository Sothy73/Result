import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height - 40);
    var firstcontrolPoint = Offset(size.width / 4, size.height - 15);
    var firstendPoint = Offset(size.width / 2.25, size.height - 40.0);
    path.quadraticBezierTo(firstcontrolPoint.dx, firstcontrolPoint.dy,
        firstendPoint.dx, firstendPoint.dy);

    var scendcontrolPoint =
        Offset(size.width - (size.width / 4.25), size.height - 85);
    var scendendPoint = Offset(size.width + 10, size.height - 40);
    path.quadraticBezierTo(scendcontrolPoint.dx, scendcontrolPoint.dy,
        scendendPoint.dx, scendendPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
