import 'package:flutter/material.dart';

class E extends StatefulWidget {
  const E({super.key});

  @override
  State<E> createState() => _EState();
}

class _EState extends State<E> {

  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (context,child){
              return Opacity(
                  opacity: _opacityAnimation.value,
              );
            }
        ),
      ),
    );
  }
}
