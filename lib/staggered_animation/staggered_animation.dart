/*

  🎯 Staggered Animation in Flutter — Kya hoti hai?
🔄 Definition (Asli Style mein):
Staggered animation ka matlab hai —
Ek se zyada animations ko aik ke baad aik (step-by-step) sequence mein chalana,
with different timings, delays, durations, curves, etc.

Jani simple words mein:

“Ek animation khatam hoti hai ya half hoti hai, phir doosri start hoti hai — sab kuch aik flow mein hota hai.”

 */

import 'package:flutter/material.dart';

class StaggeredAnimation extends StatefulWidget {
  @override
  _StaggeredAnimationState createState() => _StaggeredAnimationState();
}

class _StaggeredAnimationState extends State<StaggeredAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightAnimation;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _paddingAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _heightAnimation = Tween<double>(begin: 0, end: 200).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.ease),
      ),
    );

    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 0.75, curve: Curves.ease),
      ),
    );

    _paddingAnimation = Tween<double>(begin: 0, end: 50).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.75, 1.0, curve: Curves.ease),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startStaggered() {
    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Staggered Animation')),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              padding: EdgeInsets.only(top: _paddingAnimation.value),
              color: _colorAnimation.value,
              width: 200,
              height: _heightAnimation.value,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startStaggered,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

/*
🎤 Interview Answer (Professional Style):
“Staggered animation is used when I want multiple animations to play in a sequence with controlled timing.
It gives a smooth, professional feel — like in onboarding, list loading, or multi-step animated transitions.
I implement it using AnimationController, multiple tweens, and Interval to define each animation’s portion on the timeline.”
 */
