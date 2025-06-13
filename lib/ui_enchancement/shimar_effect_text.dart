import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimarEffectScreen extends StatefulWidget {
  const ShimarEffectScreen({super.key});

  @override
  State<ShimarEffectScreen> createState() => _ShimarEffectScreenState();
}

class _ShimarEffectScreenState extends State<ShimarEffectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.yellow,
                  child: const Text("Shimmer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
