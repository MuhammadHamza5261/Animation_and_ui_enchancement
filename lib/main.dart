import 'package:flutter/material.dart';
import 'package:lottie_proj/ui/shimar_load_list.dart';
import 'package:sizer/sizer.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    // return const ScreenUtilInit(
    //   designSize: Size(390, 800),
    //   minTextAdapt: true,
    //   splitScreenMode: true ,
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: ScreenUtilGrid(),
    //   ),
    // );
    return Sizer(
      builder: (context,orientation,deviceType){
        return const MaterialApp(
          home: ShimarListScreen(),
        );
      }

    );
  }
}


