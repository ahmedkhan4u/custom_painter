import 'package:flutter/material.dart';

class DrawRectangle extends CustomPainter {
  final bool isFilled;

  DrawRectangle({this.isFilled = false});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.blueAccent;

    paint.strokeCap = StrokeCap.round;
    paint.strokeJoin = StrokeJoin.round;
    paint.strokeWidth = 5;

    if (isFilled) {
      paint.style = PaintingStyle.fill;
    } else {
      paint.style = PaintingStyle.stroke;
    }

    Offset offset = Offset(size.width * 0.5, size.height * 0.5);

    Rect rect = Rect.fromCenter(center: offset, width: 80, height: 80);

    canvas.drawRect(rect, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
