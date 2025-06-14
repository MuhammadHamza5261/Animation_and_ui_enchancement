import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie_proj/main.dart';

class ScreenUtilGrid extends StatefulWidget {
  const ScreenUtilGrid({super.key});

  @override
  State<ScreenUtilGrid> createState() => _ScreenUtilGridState();
}

class _ScreenUtilGridState extends State<ScreenUtilGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
        child: GridView.builder(
          itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              mainAxisSpacing: 10.w,
              crossAxisSpacing: 10.w,
            ),
            itemBuilder: (context,index){

              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[500]!
                ),
                alignment: Alignment.center,
                child: Text("Item $index",style: TextStyle(
                  fontSize: 22.sp,
                  color: Colors.white
                ),),

              );

            }
        ),
      ),
    );
  }
}
