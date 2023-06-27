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

class SemicirclePainter extends CustomPainter {
  final Color color;

  SemicirclePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final path = SemiCircleClipper(bottom: 146, holeRadius: 100).getClip(size);
    final paint = Paint()..color = color;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
