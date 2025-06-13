import 'package:flutter/material.dart';
import 'package:lottie_proj/ui_enchancement/iconography.dart';
import 'package:lottie_proj/ui_enchancement/shimar_load_list.dart';
import 'package:sizer/sizer.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return Sizer(
      builder: (context,orientation,deviceType){
        return const MaterialApp(
          home: IconographyScreen(),
        );
      }

    );
  }
}


