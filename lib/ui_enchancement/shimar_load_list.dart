import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class ShimarListScreen extends StatefulWidget {
  const ShimarListScreen({super.key});

  @override
  State<ShimarListScreen> createState() => _ShimarListScreenState();
}

class _ShimarListScreenState extends State<ShimarListScreen> {

  bool isLoading = true;
  List<String> itemsList = [];

  @override
  void initState( ) {
    super.initState();
    fetchData();
  }

  Future fetchData() async {
    await Future.delayed(const Duration(seconds: 5));
    itemsList = List.generate(10, (index) => 'Item $index');
    setState(() {
      isLoading = false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text("Shimmer Loading Screen",
            style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: isLoading
            ? ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
              ),
              title: Container(
                height: 10,
                width: 100,
                color: Colors.white,
              ),
              subtitle: Container(
                height: 10,
                width: 150,
                color: Colors.white,
              ),
            ),
          ),
        )
            : ListView.builder(
          itemCount: itemsList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                  child: Text(itemsList[index][0]),
              ),
              title: Text(itemsList[index]),
              subtitle: Text(itemsList[index]),
            );
          },
        ),
      ),
    );
  }
}
