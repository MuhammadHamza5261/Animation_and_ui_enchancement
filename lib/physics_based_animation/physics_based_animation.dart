/*
📘 Physics-Based Animation — Kya Hoti Hai?
"Jahan animation real physics jese behave kare — jaise spring ki tarah bounce ho, ya gravity ki wajah se neeche gire."

Flutter mein ye animations SpringSimulation, FrictionSimulation, etc. se banti hain using the AnimationController + Simulation.
 */


import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';



class PhysicsAnimationExample extends StatefulWidget {
  @override
  _PhysicsAnimationExampleState createState() => _PhysicsAnimationExampleState();
}

class _PhysicsAnimationExampleState extends State<PhysicsAnimationExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _logoPosition = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this);

    // Start spring animation when screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) => _startSpring());
  }

  void _startSpring() {
    final spring = SpringDescription(
      mass: 1,
      stiffness: 100,   // tighter spring = faster bounce
      damping: 10,      // less damping = more bounce
    );

    final simulation = SpringSimulation(spring, 0, 300, 0);

    _controller.animateWith(simulation);
    _controller.addListener(() {
      setState(() {
        _logoPosition = _controller.value;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Physics-Based Animation')),
      body: Stack(
        children: [
          Positioned(
            top: _logoPosition,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: FlutterLogo(size: 100),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startSpring,
        child: Icon(Icons.refresh),
      ),
    );
  }
}

/*
🎤 Interview Smart Line:
“When I want more natural, real-world motion like bouncing or sliding with resistance,
I use physics-based animation using SpringSimulation.
It gives UI a very polished and realistic feel.”
 */
