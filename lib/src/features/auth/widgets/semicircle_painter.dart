import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, size.height) // Start from bottom-left corner
      ..lineTo(0, size.height / 2) // Draw a line to the top-left corner
      ..arcToPoint(
        Offset(size.width, size.height / 2), // Top-right corner
        clockwise: false, // Counter-clockwise arc
        radius: Radius.circular(size.width / 2), // Circular arc
      )
      ..lineTo(size.width,
          size.height); // Draw a line back to the bottom-right corner

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class SemicirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, size.height) // Start from bottom-left corner
      ..lineTo(0, size.height / 2) // Draw a line to the top-left corner
      ..arcToPoint(
        Offset(size.width, size.height / 2), // Top-right corner
        clockwise: false, // Counter-clockwise arc
        radius: Radius.circular(size.width), // Circular arc
      )
      ..lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(SemicirclePainter oldDelegate) => true;
}
