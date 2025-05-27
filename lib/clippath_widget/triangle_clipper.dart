import 'package:flutter/material.dart';

class TriangleClipperClass extends StatefulWidget {
  const TriangleClipperClass({super.key});

  @override
  State<TriangleClipperClass> createState() => _TriangleClipperClassState();
}

class _TriangleClipperClassState extends State<TriangleClipperClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: TriangleClipper(),
          child: Container(
            color: Colors.purple,
            height: 200,
            width: 200,
          ),
        ),

      ),
    );
  }
}


class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // path.lineTo(size.width, 0); // top-right
    // path.lineTo(size.width / 2, size.height);

    path.lineTo(size.width, 0);                  // Top-right corner
    path.lineTo(size.width / 3, size.height);        // Bottom-right corner sa left tak
    path.lineTo(0, size.height);                 // Bottom-left corner
    path.lineTo(0, 0);



    // bottom-center
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


