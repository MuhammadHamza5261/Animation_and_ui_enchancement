import 'package:flutter/material.dart';
import 'package:lottie_proj/animated_list/animated_list.dart';
import 'package:lottie_proj/clippath_widget/clip_path.dart';
import 'package:lottie_proj/clippath_widget/triangle_clipper.dart';
import 'package:lottie_proj/hero_animation/hero_animation.dart';
import 'package:lottie_proj/implicit_and_explicit_animation/i.dart';
import 'package:lottie_proj/physics_based_animation/physics_based_animation.dart';
import 'package:lottie_proj/staggered_animation/staggered_animation.dart';
import 'package:lottie_proj/ui/s.dart';
import 'package:lottie_proj/ui/shimar_load_list.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: S(),
    );
  }
}


