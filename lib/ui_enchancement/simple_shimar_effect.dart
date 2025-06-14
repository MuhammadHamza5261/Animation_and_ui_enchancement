import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimarEffectList extends StatefulWidget {
  const ShimarEffectList({super.key});

  @override
  State<ShimarEffectList> createState() => _ShimarEffectListState();
}

class _ShimarEffectListState extends State<ShimarEffectList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // ListView.builder(
            //   itemCount: 6,
            //     itemBuilder: (context,index) => Shimmer.fromColors(
            //       highlightColor: Colors.grey[300]!,
            //       baseColor: Colors.grey[100]!,
            //       child: ListTile(
            //       leading: const CircleAvatar(
            //         backgroundColor: Colors.white,
            //         radius: 50,
            //       ),
            //       title: Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.white,
            //       ),
            //       subtitle: Container(
            //         height: 100,
            //         width: 200,
            //         color: Colors.white,
            //       ),
            //       ),
            //       ),
            // ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
                itemBuilder: (context,index) => Shimmer.fromColors(
                    baseColor: Colors.grey[100]!,
                    highlightColor: Colors.grey[300]!,
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey,
                    ),
                    title: Container(
                      height: 10,
                      width: 100,
                      color: Colors.white,
                    ),
                    subtitle: Container(
                      height: 10,
                      width: 100,
                      color: Colors.white,
                    ),

                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
