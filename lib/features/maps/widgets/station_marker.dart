import 'package:flutter/material.dart';
import 'marker_component.dart';

// ignore: avoid_classes_with_only_static_members
class StationMarker extends MarkerComponent {
  const StationMarker({
    required this.color,
    required this.count,
  }) : super(const Size(30, 18));

  final Color color;
  final int count;

  @override
  void draw(Canvas canvas) {
    canvas.drawCircle(Offset(size.width * 2.3, size.height * 3.5),
        size.height * 2.5 + 18, Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width * 2.3, size.height * 3.5),
        size.height * 2.5 + 12, Paint()..color = color);
    canvas.drawCircle(Offset(size.width * 2.3, size.height * 3.5),
        size.height * 2.5, Paint()..color = Colors.white);

    if (count > 1) {
      _drawCount(canvas);
    } else {
      _drawLightning(canvas);
    }
  }

  void _drawCount(Canvas canvas) {
    final painter = TextPainter(textDirection: TextDirection.ltr);
    painter.text = TextSpan(
      text: count.toString(),
      style: const TextStyle(fontSize: 48, color: Colors.black),
    );
    painter.layout();

    painter.paint(
      canvas,
      Offset(size.width * 2 - painter.width / 4, 32),
    );
  }

  void _drawLightning(Canvas canvas) {
    final path = Path();

    path.moveTo(size.width * 2.750000, size.height * 1.428571);
    path.lineTo(size.width * 1.675000, size.height * 3.928571);
    path.lineTo(size.width * 2.325000, size.height * 3.914286);
    path.lineTo(size.width * 1.941667, size.height * 5.700000);
    path.lineTo(size.width * 3.000000, size.height * 3.142857);
    path.lineTo(size.width * 2.366667, size.height * 3.128571);
    path.lineTo(size.width * 2.750000, size.height * 1.428571);
    path.close();

    final paint = Paint()..style = PaintingStyle.fill;
    paint.color = color;

    canvas.drawPath(path, paint);
  }
}
