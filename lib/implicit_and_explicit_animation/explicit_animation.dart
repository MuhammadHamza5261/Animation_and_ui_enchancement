/*

👨‍🍳 Explicit Animation = Manual Juice Banane Wala Banda
Yahan tum decide karte ho:
kab orange daalne hain, kab nimbu, kitni bar grind karna hai, kitni speed rakhni hai...
Full control tumhare paas hai!

✅ Jab tumhein complex control chahiye — jaise
animations ko sync karna,
reverse, delay, loop,
ya user gesture pe reaction dikhana —
to explicit animation zaroori hoti hai.


🧠 Interview Smart Answer:
“Implicit animation best hoti hai jab mujhe UI transitions smoothly dikhani ho with minimum code.
Lekin jab mujhe full control chahiye — jaise animation ko reverse karna, gesture-based trigger ya multiple animations
ko sync karna — to main explicit animation use karta hoon using AnimationController.”



 */


import 'package:flutter/material.dart';

class ExplicitAnimationExample extends StatefulWidget {
  @override
  _ExplicitAnimationExampleState createState() =>
      _ExplicitAnimationExampleState();
}

class _ExplicitAnimationExampleState extends State<ExplicitAnimationExample> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.5).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // very important to prevent memory leaks
    super.dispose();
  }

  void _startAnimation() {
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Explicit Animation")),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Opacity(
              opacity: _opacityAnimation.value,
              child: Transform.scale(
                scale: _scaleAnimation.value,
                child: child,
              ),
            );
          },
          child: const FlutterLogo(size: 100),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startAnimation,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
