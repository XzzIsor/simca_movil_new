import 'package:flutter/material.dart';

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(color: Color.fromRGBO(13, 83, 155, 1)),
      child: CustomPaint(
        painter: _WeavesHeaderPainter(),
      ),
    );
  }
}

class _WeavesHeaderPainter extends CustomPainter {
  final Rect rect =
      Rect.fromCircle(center: const Offset(350, 250), radius: 180);

  final Gradient gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
    Color.fromRGBO(44, 39, 46, 0.9),
    Color.fromRGBO(76, 77, 106, 0.6),
    ],
    stops: [
      0.2,
      1,
    ]
  );

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..shader = gradient.createShader(rect);

    paint.color = const Color.fromRGBO(76, 77, 106, 1);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.moveTo(size.width * 30, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.60);
    path.lineTo(0, size.height * 0.36);
    path.lineTo(0, 0);
    path.lineTo(size.width * 0.55, 0);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
