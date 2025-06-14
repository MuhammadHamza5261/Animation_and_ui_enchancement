import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SizerScreen extends StatefulWidget {
  const SizerScreen({super.key});

  @override
  State<SizerScreen> createState() => _SizerScreenState();
}

class _SizerScreenState extends State<SizerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 60.w),
        child: Container(
          height: 30.h,
          width: 200.w,
          color: Colors.blueAccent,
          child: Center(
            child: Text("Sizer Responsive",style: TextStyle(
              fontSize: 30.sp
            ),),
            // same as screen util
          ),
        ),

      ),
    );
  }
}
