import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class ShimarScreen extends StatefulWidget {
  const ShimarScreen({super.key});

  @override
  State<ShimarScreen> createState() => _ShimarScreenState();
}

class _ShimarScreenState extends State<ShimarScreen> {

  bool _isLoading = true;
  List<String> itemList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  Future fetchData() async{
    await Future.delayed(const Duration(seconds: 5));
    itemList = List.generate(10, (index) => 'Item $index');
    setState(() {
      _isLoading = false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
             child: _isLoading ? ListView.builder(
               shrinkWrap: true,
               itemCount: 10,
                 itemBuilder: (context,index) => Shimmer.fromColors(
                     baseColor: Colors.grey[300]!, 
                     highlightColor: Colors.grey[100]!,
                   child: ListTile(
                     leading: const CircleAvatar(
                       radius: 40,
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
               shrinkWrap: true,
               itemCount: itemList.length,
                 itemBuilder: (context,index){
                 return ListTile(
                   leading: CircleAvatar(
                     child: Text(itemList[index][0]),
                   ),
                   title: Text(itemList[index]),
                   subtitle: Text(itemList[index]),
                 );
                   
                 }
             )
     ),

    );
  }
}
