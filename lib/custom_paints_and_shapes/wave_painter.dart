import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.indigo
      ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2, size.height,
      size.width, size.height - 50,
    );
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}



class WavePainterScreen extends StatefulWidget {
  const WavePainterScreen({super.key});

  @override
  State<WavePainterScreen> createState() => _WavePainterScreenState();
}

class _WavePainterScreenState extends State<WavePainterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          CustomPaint(
            size: Size(double.infinity, 200),
            painter: WavePainter(),
          )

        ],
      ),
    );
  }
}


