// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SemiCircleClipper extends CustomClipper<Path> {
  final double holeRadius;
  final double bottom;

  SemiCircleClipper({required this.holeRadius, required this.bottom});

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0.0, size.height - bottom - holeRadius)
      ..arcToPoint(
        Offset(0, size.height - bottom),
        clockwise: true,
        radius: const Radius.circular(1),
      )
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - bottom)
      ..arcToPoint(
        Offset(size.width, size.height - bottom - holeRadius),
        clockwise: true,
        radius: const Radius.circular(1),
      );

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(SemiCircleClipper oldClipper) => true;
}

