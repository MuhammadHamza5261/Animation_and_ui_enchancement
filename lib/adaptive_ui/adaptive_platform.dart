import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AdaptivePlatform extends StatefulWidget {
  const AdaptivePlatform({super.key});

  @override
  State<AdaptivePlatform> createState() => _AdaptivePlatformState();
}

class _AdaptivePlatformState extends State<AdaptivePlatform> {
  @override
  Widget build(BuildContext context) {
     if(Platform.isAndroid){
       return const Scaffold(
         body: Center(
           child: Text("This is andriod side"),
         ),
       );
     }
     else if(Platform.isIOS){
       return const CupertinoPageScaffold(
         navigationBar: CupertinoNavigationBar(
           middle: Text("Ios Specific UI"),
         ),
           child: Text("This is IOS")
       );
     }
     else{
       return Scaffold(
         appBar: AppBar(
           title: const Text("Other Platform"),
         ),
         body: const Center(
           child: Text("This is not andriod and Ios"),
         ),
       );
     }
  }
}
