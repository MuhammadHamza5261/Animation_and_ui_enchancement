import 'package:flutter/material.dart';

class I extends StatefulWidget {
  const I({super.key});

  @override
  State<I> createState() => _IState();
}

class _IState extends State<I> {

  double opacity = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startAnimating();
  }

  void startAnimating(){

    Future.delayed(const Duration(seconds: 1,),(){
      setState(() {
        opacity = opacity == 1 ? 0.15: 1;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(milliseconds: 1500),
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
