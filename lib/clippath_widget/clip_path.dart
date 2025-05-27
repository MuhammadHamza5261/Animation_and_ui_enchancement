import 'package:flutter/material.dart';


class ClipPathClass extends StatefulWidget {
  const ClipPathClass({super.key});

  @override
  State<ClipPathClass> createState() => _ClipPathClassState();
}

class _ClipPathClassState extends State<ClipPathClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 400,
            width: 200,
            color: Colors.teal,
            child: const Text("Custom Shape",
              style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
            ),
          ),
        ),
      ),
    );
  }
}


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, 0);
// 📍 Top-left (0, 0) se → Top-right (size.width, 0) tak horizontal line

    path.lineTo(size.width /3, size.height);
// 📍 Top-right (size.width, 0) se → Niche left corner tak (1/3 width, full height) diagonal line

    path.lineTo(0, size.height);
// 📍 Us point se → Bottom-left (0, height) tak horizontal line

    path.lineTo(0, 0);
// 📍 Bottom-left se → Wapas Top-left (0, 0) tak vertical line

    path.close();
// 📍 Path ko complete close karta hai (just in case last point missed ho)

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}





