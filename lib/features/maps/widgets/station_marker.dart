import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'marker_component.dart';

const _clusterColor = Colors.orange;

class StationMarker extends MarkerComponent {
  StationMarker({
    required Color color,
    required this.count,
  })  : _color = count > 1 ? _clusterColor : color,
        super(_size);

  static Size get _size {
    const size = Size(30, 18);
    if (kIsWeb) {
      return size / 4;
    }
    return size;
  }

  final Color _color;
  final int count;

  @override
  void draw(Canvas canvas) {
    canvas.drawCircle(Offset(size.width * 2.3, size.height * 3.5),
        size.height * 3.5, Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width * 2.3, size.height * 3.5),
        size.height * 3.5 - size.height / 3, Paint()..color = _color);
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
      style: TextStyle(fontSize: size.height + size.width, color: _color),
    );
    painter.layout();

    painter.paint(
      canvas,
      Offset(size.width * 2.3 - painter.width / 1.9, size.height * 2),
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
    paint.color = _color;

    canvas.drawPath(path, paint);
  }
}
