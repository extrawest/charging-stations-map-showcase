import 'dart:math';

import 'package:flutter/material.dart';
import '../../../features/theme/styles/app_colors.dart';

class ChargingIndicator extends StatelessWidget {
  const ChargingIndicator({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.transparent,
          height: 206,
        ),
        RotatedBox(
          quarterTurns: 1,
          child: CustomPaint(
            size: const Size.fromRadius(100),
            painter: GradientCircularProgressPainter(
              radius: 100,
              strokeWidth: 2,
              gradientColors: const [
                Color(0xffE9F2F9),
                Color(0xff597393),
              ],
            ),
          ),
        ),
        Container(
          height: 180,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: const Color.fromARGB(255, 65, 59, 59).withOpacity(0.1),
              )
            ],
          ),
          child: Container(
            height: 170,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.blueGrey, width: 0.5),
            ),
            child: child,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class GradientCircularProgressPainter extends CustomPainter {
  GradientCircularProgressPainter({
    required this.radius,
    required this.gradientColors,
    required this.strokeWidth,
  });
  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    size = Size.fromRadius(radius);
    final offset = strokeWidth / 2;
    final rect = Offset(offset, offset) &
        Size(size.width - strokeWidth, size.height - strokeWidth);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    paint.shader = SweepGradient(
      colors: gradientColors,
      startAngle: 0.0,
      endAngle: 2 * pi,
    ).createShader(rect);
    canvas.drawArc(rect, pi, 3 * pi, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
