import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class S extends StatefulWidget {
  const S({super.key});

  @override
  State<S> createState() => _SState();
}

class _SState extends State<S> {

  bool isLoading = true;
  List<String> itemList = [];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future fetchData() async{

    Future.delayed(const Duration(seconds: 5));
    itemList = List.generate(10, (index) => 'Item $index');
    setState(() {
      isLoading = false;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          isLoading ?
              ListView.builder(
                itemCount: 10,
                  itemBuilder: (context,index) => Shimmer.fromColors(
                    baseColor: Colors.grey,
                  highlightColor: Colors.grey[100]!,
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
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
              ): ListView.builder(
            itemCount:  itemList.length,
              itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: Text(itemList[index][0]),
                ),
                title: Text(itemList[index]),
                subtitle: Text(itemList[index]),

              );


              }
          ),

        ],


      ),


    );
  }
}
