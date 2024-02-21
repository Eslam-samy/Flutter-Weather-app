import 'dart:math' as math;
import 'package:flutter/material.dart';

class SunMoonWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: CustomPaint(
        painter: SunMoonPainter(),
      ),
    );
  }
}

class SunMoonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final DateTime now = DateTime.now();
    final int hour = now.hour;

    // Determine whether it's day or night based on the hour
    bool isDaytime = hour >= 6 && hour < 18;

    final Paint sunPaint = Paint()
      ..color = isDaytime ? Colors.yellow : Colors.grey;

    final Paint moonPaint = Paint()
      ..color = isDaytime ? Colors.white : Color.fromARGB(255, 177, 171, 171);

    final Paint rayPaint = Paint()
      ..color = isDaytime ? Colors.yellow : Colors.white;

    final Paint shadowPaint = Paint()
      ..color = isDaytime
          ? Color.fromARGB(255, 235, 225, 160)
          : Color.fromARGB(255, 226, 222, 222)
      ..maskFilter = MaskFilter.blur(
          BlurStyle.normal, 10.0); // Adjust blur radius for wider shadow

    // Draw the sun/moon shadow
    // Draw scattered shadows around the sun/moon
    // Draw scattered shadows around the sun/moon
    final List<Offset> shadowPositions = [
      Offset(size.width / 2 - 60, size.height / 2 + 40),
      Offset(size.width / 2, size.height / 3),
      Offset(size.width / 2, size.height / 2),
      Offset(size.width / 1.5, size.height / 2),
      Offset(size.width / 1.2, size.height / 1.8),
    ];

    for (Offset position in shadowPositions) {
      canvas.drawCircle(
        position,
        50, // Adjust radius for wider shadow
        shadowPaint,
      );
    }

    // Draw the sun/moon
    canvas.drawCircle(Offset(size.width / 1.4, size.height / 3), 50,
        isDaytime ? sunPaint : moonPaint);

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 3),

      50, // Adjust radius for wider shadow
      shadowPaint,
    );

    // Draw sun/moon rays only during daytime
    if (isDaytime) {
      for (double angle = 0; angle < 360; angle += 30) {
        final double radians = math.pi / 180 * angle;
        canvas.drawLine(
          Offset(size.width / 2, size.height / 2),
          Offset(size.width / 2 + 70 * math.cos(radians),
              size.height / 2 + 70 * math.sin(radians)),
          rayPaint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
