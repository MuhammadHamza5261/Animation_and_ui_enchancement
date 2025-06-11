import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie_proj/main.dart';

class ScreenUtilScreen extends StatefulWidget {
  const ScreenUtilScreen({super.key});

  @override
  State<ScreenUtilScreen> createState() => _ScreenUtilScreenState();
}

class _ScreenUtilScreenState extends State<ScreenUtilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Screen Util"),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
           child: Column(
             children: [
               Container(
                 height: 100.h,
                 width: 100.w,
                 color: Colors.blueAccent,
               ),
               SizedBox(
                 height: 20.h,
               ),
               Text("Hello Flutter",
                 style: TextStyle(
                 fontSize: 24.sp,
                 fontWeight: FontWeight.bold
               ),),
               SizedBox(
                 height: 20.h,
               ),
               ElevatedButton(
                   onPressed: (){},
                   child: Text("Press Me",style: TextStyle(
                     fontSize: 18.sp
                   ),)
               )

             ],
           ),
      ),
    );
  }
}
