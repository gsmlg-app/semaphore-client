import 'package:flutter/material.dart';

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    
    // Simple semaphore logo representation
    // Path number 1 - Main green shape
    paint.color = const Color(0xff3eed85);
    path = Path();
    path.lineTo(size.width * 0.12, size.height * 0.62);
    path.cubicTo(size.width * 0.12, size.height * 0.62, size.width * 0.12,
        size.height * 0.62, size.width * 0.12, size.height * 0.62);
    path.cubicTo(size.width * 0.12, size.height * 0.61, size.width * 0.12,
        size.height * 0.61, size.width * 0.12, size.height * 0.61);
    path.cubicTo(size.width * 0.12, size.height * 0.61, size.width * 0.12,
        size.height * 0.6, size.width * 0.12, size.height * 0.6);
    path.cubicTo(size.width * 0.12, size.height * 0.6, size.width * 0.13,
        size.height * 0.55, size.width * 0.14, size.height * 0.53);
    path.cubicTo(size.width * 0.14, size.height * 0.54, size.width * 0.14,
        size.height * 0.54, size.width * 0.14, size.height * 0.54);
    path.cubicTo(size.width * 0.14, size.height * 0.53, size.width * 0.14,
        size.height * 0.53, size.width * 0.14, size.height * 0.53);
    path.cubicTo(size.width * 0.14, size.height * 0.52, size.width * 0.14,
        size.height * 0.52, size.width * 0.14, size.height * 0.52);
    path.cubicTo(size.width * 0.14, size.height * 0.51, size.width * 0.14,
        size.height * 0.51, size.width * 0.14, size.height * 0.51);
    path.cubicTo(size.width * 0.14, size.height * 0.49, size.width * 0.14,
        size.height * 0.49, size.width * 0.14, size.height * 0.49);
    path.cubicTo(size.width * 0.14, size.height * 0.49, size.width * 0.15,
        size.height * 0.49, size.width * 0.15, size.height * 0.49);
    path.cubicTo(size.width * 0.15, size.height * 0.49, size.width * 0.15,
        size.height * 0.43, size.width * 0.15, size.height * 0.43);
    path.cubicTo(size.width * 0.15, size.height * 0.43, size.width * 0.15,
        size.height * 0.42, size.width * 0.15, size.height * 0.42);
    path.cubicTo(size.width * 0.15, size.height * 0.42, size.width * 0.14,
        size.height * 0.42, size.width * 0.14, size.height * 0.42);
    path.cubicTo(size.width * 0.14, size.height * 0.42, size.width * 0.14,
        size.height * 0.41, size.width * 0.14, size.height * 0.41);
    path.cubicTo(size.width * 0.14, size.height * 0.41, size.width * 0.14,
        size.height * 0.4, size.width * 0.14, size.height * 0.4);
    path.cubicTo(size.width * 0.14, size.height * 0.4, size.width * 0.14,
        size.height * 0.39, size.width * 0.14, size.height * 0.39);
    path.cubicTo(size.width * 0.14, size.height * 0.39, size.width * 0.14,
        size.height * 0.38, size.width * 0.14, size.height * 0.38);
    path.cubicTo(size.width * 0.14, size.height * 0.38, size.width * 0.13,
        size.height * 0.38, size.width * 0.13, size.height * 0.38);
    path.cubicTo(size.width * 0.13, size.height * 0.38, size.width * 0.13,
        size.height * 0.37, size.width * 0.13, size.height * 0.37);
    path.cubicTo(size.width * 0.13, size.height * 0.37, size.width * 0.13,
        size.height * 0.36, size.width * 0.13, size.height * 0.36);
    path.cubicTo(size.width * 0.13, size.height * 0.36, size.width * 0.13,
        size.height * 0.35, size.width * 0.13, size.height * 0.35);
    path.cubicTo(size.width * 0.13, size.height * 0.35, size.width * 0.13,
        size.height * 0.34, size.width * 0.13, size.height * 0.34);
    path.cubicTo(size.width * 0.13, size.height * 0.34, size.width * 0.13,
        size.height * 0.34, size.width * 0.12, size.height * 0.34);
    path.cubicTo(size.width * 0.12, size.height * 0.34, size.width * 0.12,
        size.height / 3, size.width * 0.12, size.height / 3);
    path.cubicTo(size.width * 0.12, size.height / 3, size.width * 0.12,
        size.height * 0.22, size.width * 0.12, size.height * 0.22);
    path.cubicTo(size.width * 0.12, size.height * 0.22, size.width * 0.12,
        size.height * 0.19, size.width * 0.12, size.height * 0.19);
    path.cubicTo(size.width * 0.12, size.height * 0.19, size.width * 0.12,
        size.height * 0.19, size.width * 0.13, size.height * 0.19);
    path.cubicTo(size.width * 0.13, size.height * 0.19, size.width * 0.13,
        size.height * 0.19, size.width * 0.12, size.height * 0.19);
    path.cubicTo(size.width * 0.12, size.height * 0.19, size.width / 5,
        size.height / 5, size.width / 5, size.height / 5);
    path.cubicTo(size.width / 5, size.height / 5, size.width / 5,
        size.height * 0.19, size.width / 5, size.height * 0.19);
    path.cubicTo(size.width / 5, size.height * 0.19, size.width / 5,
        size.height * 0.19, size.width / 5, size.height / 5);
    path.cubicTo(size.width / 5, size.height * 0.23, size.width / 5,
        size.height * 0.27, size.width / 5, size.height * 0.3);
    path.cubicTo(size.width / 5, size.height * 0.3, size.width / 5,
        size.height * 0.3, size.width / 5, size.height * 0.3);
    path.cubicTo(size.width / 5, size.height / 3, size.width / 5,
        size.height * 0.32, size.width / 5, size.height * 0.34);
    path.cubicTo(size.width / 5, size.height * 0.34, size.width / 5,
        size.height * 0.35, size.width / 5, size.height * 0.35);
    path.cubicTo(size.width / 5, size.height * 0.36, size.width / 5,
        size.height * 0.35, size.width / 5, size.height * 0.36);
    path.cubicTo(size.width * 0.19, size.height * 0.41, size.width * 0.18,
        size.height * 0.38, size.width * 0.18, size.height * 0.46);
    path.cubicTo(size.width * 0.18, size.height * 0.46, size.width * 0.18,
        size.height * 0.46, size.width * 0.18, size.height * 0.46);
    path.cubicTo(size.width * 0.18, size.height * 0.47, size.width * 0.18,
        size.height * 0.47, size.width * 0.18, size.height * 0.47);
    path.cubicTo(size.width * 0.18, size.height * 0.47, size.width * 0.19,
        size.height * 0.47, size.width * 0.19, size.height * 0.47);
    path.cubicTo(size.width * 0.19, size.height * 0.47, size.width * 0.19,
        size.height * 0.48, size.width * 0.19, size.height * 0.48);
    path.cubicTo(size.width * 0.19, size.height * 0.48, size.width * 0.19,
        size.height * 0.49, size.width * 0.19, size.height * 0.49);
    path.cubicTo(size.width * 0.19, size.height * 0.49, size.width * 0.19,
        size.height * 0.49, size.width * 0.19, size.height * 0.51);
    path.cubicTo(size.width * 0.19, size.height * 0.51, size.width * 0.19,
        size.height * 0.51, size.width * 0.19, size.height * 0.51);
    path.cubicTo(size.width * 0.19, size.height * 0.51, size.width / 5,
        size.height * 0.51, size.width / 5, size.height * 0.51);
    path.cubicTo(size.width / 5, size.height * 0.51, size.width / 5,
        size.height * 0.53, size.width / 5, size.height * 0.53);
    path.cubicTo(size.width / 5, size.height * 0.53, size.width / 5,
        size.height * 0.54, size.width / 5, size.height * 0.54);
    path.cubicTo(size.width / 5, size.height * 0.54, size.width / 5,
        size.height * 0.55, size.width / 5, size.height * 0.55);
    path.cubicTo(size.width / 5, size.height * 0.55, size.width / 5,
        size.height * 0.56, size.width / 5, size.height * 0.56);
    path.cubicTo(size.width / 5, size.height * 0.56, size.width / 5,
        size.height * 0.57, size.width / 5, size.height * 0.57);
    path.cubicTo(size.width / 5, size.height * 0.57, size.width / 5,
        size.height * 0.58, size.width / 5, size.height * 0.58);
    path.cubicTo(size.width / 5, size.height * 0.58, size.width / 5,
        size.height * 0.59, size.width / 5, size.height * 0.59);
    path.cubicTo(size.width / 5, size.height * 0.59, size.width / 5,
        size.height * 0.6, size.width / 5, size.height * 0.6);
    path.cubicTo(size.width / 5, size.height * 0.6, size.width / 5,
        size.height * 0.65, size.width / 5, size.height * 0.71);
    path.cubicTo(size.width / 5, size.height * 0.76, size.width / 5,
        size.height * 0.77, size.width / 5, size.height * 0.77);
    path.cubicTo(size.width / 5, size.height * 0.77, size.width * 0.12,
        size.height * 0.77, size.width * 0.12, size.height * 0.77);
    path.cubicTo(size.width * 0.12, size.height * 0.77, size.width * 0.12,
        size.height * 0.76, size.width * 0.12, size.height * 0.76);
    path.cubicTo(size.width * 0.12, size.height * 0.76, size.width * 0.12,
        size.height * 0.73, size.width * 0.12, size.height * 0.73);
    path.cubicTo(size.width * 0.12, size.height * 0.73, size.width * 0.12,
        size.height * 0.62, size.width * 0.12, size.height * 0.62);
    canvas.drawPath(path, paint);

    // Add a simple circle as a placeholder for the complex logo
    paint.color = const Color(0xff26adf1);
    canvas.drawCircle(
      Offset(size.width * 0.5, size.height * 0.5),
      size.width * 0.1,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}