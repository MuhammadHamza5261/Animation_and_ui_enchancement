import 'package:flutter/material.dart';

class AdpativeUiScreen extends StatefulWidget {
  const AdpativeUiScreen({super.key});

  @override
  State<AdpativeUiScreen> createState() => _AdpativeUiScreenState();
}

class _AdpativeUiScreenState extends State<AdpativeUiScreen> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    if(screenWidth < 600){
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Mobile layout"),
        ),
        body: ListView.builder(
            itemBuilder: (context,index){
              return ListTile(
                leading: const Icon(Icons.mobile_friendly),
                title: Text("Item $index"),
              );
            }
        ),
      );

    }
    else{
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: const Text("Desktop Tablet View"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 2
              ),
              itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent,
                  ),
                  alignment: Alignment.center,
                  child: Text("Item $index"),
                );

              }
          ),
        ),
      );


    }

  }
}
