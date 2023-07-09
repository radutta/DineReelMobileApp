import 'package:flutter/material.dart';

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
        radius: Radius.circular(size.width * .9), // Circular arc
      )
      ..lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(SemicirclePainter oldDelegate) => true;
}
