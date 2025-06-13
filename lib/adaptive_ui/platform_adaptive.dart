import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformAdaptive extends StatefulWidget {
  const PlatformAdaptive({super.key});

  @override
  State<PlatformAdaptive> createState() => _PlatformAdaptiveState();
}

class _PlatformAdaptiveState extends State<PlatformAdaptive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Platform Adaptive"),
      ),
         body: Center(
           child:  Platform.isIOS ? SizedBox(
             child: CupertinoButton(
               onPressed: (){},
                 child: const Text("Cupertino Button"),
             ),
           ): SizedBox(
             child: ElevatedButton(
                 onPressed: (){},
                 child: const Text("Elevated Button")
             ),
           ),
         ),
    );
  }
}
