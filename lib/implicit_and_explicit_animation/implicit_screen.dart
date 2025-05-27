/*
🧃 Implicit Animation = Automatic Juice Machine
Tum button dabate ho, machine khud hi juice banake glass bhar deti hai.
Tumhe sirf "start" bolna hota hai.

✅ Simple requirement ho — like fade, move, resize — to implicit animation best hai.
 */


import 'package:flutter/material.dart';

class ImplicitScreen extends StatefulWidget {
  const ImplicitScreen({super.key});

  @override
  State<ImplicitScreen> createState() => _ImplicitScreenState();
}

class _ImplicitScreenState extends State<ImplicitScreen> {

  double opacity = 1;

  @override
  void initState() {
    super.initState();
    startAnimating();
  }

  void startAnimating(){
    Future.delayed(const Duration(seconds: 1,milliseconds: 500),(){
      setState(() {
        opacity = opacity == 1 ? 0.5 : 1;
      });
      startAnimating();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(milliseconds: 250),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
        ),
      ),
    );
  }
}
