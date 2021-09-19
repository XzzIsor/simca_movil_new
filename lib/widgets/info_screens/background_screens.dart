import 'package:flutter/material.dart';

class BackgroundScreens extends StatelessWidget {
  const BackgroundScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(13, 83, 155, 1)),
            child: CustomPaint(
              painter: _SimcaHeaderPainter(),
            ),
        ),
        Positioned(
            top: 60,
            left: size.width - 70,
            child: const SizedBox(
              height: 60,
              width: 60,
              child: Image(
                image: AssetImage('assets/logo-simca.png'),
              ),
            )),
      ],
    );
  }
}

class _SimcaHeaderPainter extends CustomPainter {
  final Rect rect =
      Rect.fromCircle(center: const Offset(350, 250), radius: 180);

  final Gradient gradient = const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomRight,
      colors: [
        Color.fromRGBO(155, 59, 59, 1),
        Color.fromRGBO(20, 21, 64, 0.41),
      ],
      stops: [
        0.2,
        0.8,
      ]);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..shader = gradient.createShader(rect);

    paint.color = const Color.fromRGBO(76, 77, 106, 1);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    path.moveTo(0, size.height * 0.04);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.65);
    path.lineTo(0, size.height * 0.40);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
