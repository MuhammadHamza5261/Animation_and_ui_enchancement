import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Lottie.network(
                //   'https://assets10.lottiefiles.com/packages/lf20_3rwasyjy.json',
                //   width: 400,
                //   height: 400,
                //   fit: BoxFit.fill,
                // ),
                Lottie.asset("assets/lottie.json"),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 12),
                    textStyle: const TextStyle(fontSize: 24)
                  ),
                    icon: const Icon(Icons.group_work_outlined,size: 25,color: Colors.white,),
                    onPressed: (){

                    },
                    label: const Text("Start work",style: TextStyle(
                      color: Colors.white,
                    ),),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
